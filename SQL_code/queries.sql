-- Crud

-- В города с самым низким показателем счасться устроил праздники без повода и бесплатно
update Holidays.city set happiness_pct = 0.1 where happiness_pct = 0;

-- Надо уволить сотрудников у которых маленький уровень счастья, они выгорели и мешают работе
delete from Holidays.Research_Associate where happiness_pct < 4;

-- Было создана новая компания на базе МФТИ, но пока не имеет сотрудников
insert into Holidays.Company(name_nm, rating_rate, employees_cnt) values ('Mipt cosmos lab', 0, 0);

-- Проверим не остались ли очень грустные люди с уровням счастья меньше 4 процентов
select
      fullname_nm
    , happiness_pct
from
    Holidays.Research_Associate;

--Смысловые запросы

--1--
-- Посчитаем средний уровень кисотности для всех городов, за все праздники.
-- Защитники планеты хотели узнать насколько средний уровень кислотности празднующих городов за все праздники
-- выбивается из нормы.

select
    avg(toxicity_value)
from
     City,
     Day,
     Weather
where
    City.city_id = Day.day_id and 
    Day.weather_id = Weather.weather_id;


--2--
-- Хотим отсортировать те города где проводился праздник "Международный день обнимашек"
-- по уровню счастья праздника.
-- Так мы узнаем в каких городах этот праздник ценят больше всего
-- и где он приносит больше всего счастья. вывести название города и средний уровнь счастья праздника в данном городе

select
    City.name_nm,
    avg(Festival.happiness_pct) as hap_pct
from
      City
inner join Day on
    Day.city_id = City.city_id
inner join Festival on
    Festival.day_id = Day.day_id
where
    Festival.name_nm = 'International hug day'
group by
    City.name_nm
order by
    hap_pct desc;


--3--
-- Найти сколько праздников проводит каждая компания, которые проводились в городах с населением не больше 200000,
-- Компании надо отсортировать по количеству таких праздников, так мы узнаем, каким компаниям пренадлежит монополия
-- маленьких городов

select
    Company.name_nm,
    count(Festival) as fest_count
from
    Company
inner join City on
    Company.company_id = City.company_id
inner join Day on
    City.city_id = Day.day_id
inner join Festival on
    Day.day_id = Festival.day_id
where
    City.population_cnt <= 200000
group by
    Company.name_nm
order by
    fest_count desc;


--4--
-- Каждый сотрудник хочет знать насколько его уровень счастья отличается от
-- среднего уровня счастья всех сотрудников его компании. Если его показатель больше среднего и у него нет диплома т
-- о заносим в список А а если есть диплом и меньше среднего то в список B, иначе спсиок С.
-- Так мы соберем статистику на тему (влияет ли диплом на счастье в работе ?).

select
       diff.nm as fullname,
       diff.dif as happiness_difference,
       (case
           when dif > 0 and af.diploma_flg = false
                then 'A'
           when dif < 0 and af.diploma_flg = true
                then 'B'
           else 'C'
                end) as happiness_group
from
    (select
        ra.fullname_nm as nm,
        ra.field_id as field__id,
        ra.happiness_pct - avg_hap_pct.avg as dif
    from
        Research_Associate ra,
        (select
            Company.company_id as comp_id,
            avg(Research_Associate.happiness_pct) as avg
        from
            Company
        inner join Research_Associate on
            Company.company_id = Research_Associate.company_id
        group by
            Company.company_id) avg_hap_pct
    where
        ra.company_id = avg_hap_pct.comp_id) diff,
     Activity_Field af
where
    af.field_id = diff.field__id
order by
    happiness_group;


--5--
-- Хотим увидеть для каждой даты сколько суммарно людей праздноало в этот день хоть что-то,
-- и вместе с этим хотим увидеть количество празднующих людей из кждой страны, ну и является ли день выходным.
-- Эти данны нужны датасайнтистам из DS потока, они хотят узнать в каких странах больше всего участников в праздниках,
-- ну и празднующее население земли в данный день тоже.

select distinct
    country_nm,
    date_dt,
       (case
           when Day.workday_flg = true
           then 'Workday'
           else
                'Non-working day'
           end) as work,
    sum(participant_cnt) over (partition by date_dt) as all_participants_cnt,
    participant_cnt as country_countributon
from
    City
inner join Day on
    Day.city_id = City.city_id
inner join Festival on
    Day.day_id = Festival.day_id
order by
    all_participants_cnt;
