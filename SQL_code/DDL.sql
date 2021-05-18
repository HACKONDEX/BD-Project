create schema Holidays;

create table Holidays.Activity_Field(
      field_id serial primary key
    , field_dsc varchar(255) not null
    , diploma_flg boolean not null
);

create table Holidays.Company(
      company_id serial primary key
    , name_nm varchar(255) not null
    , rating_rate smallint check (rating_rate >= 0 and rating_rate <= 10)
    , employees_cnt integer check (employees_cnt >= 0)
);

create table Holidays.Research_Associate(
      fullname_nm varchar(255) not null
    , id_num serial primary key
    , field_id integer references Holidays.Activity_Field(field_id)
    , company_id integer references Holidays.Company(company_id)
    , happiness_pct double precision check (happiness_pct >= 0 and happiness_pct <= 100)
);

create table Holidays.City(
      name_nm varchar(255) not null
    , country_nm varchar(255) not null
    , city_id serial primary key
    , company_id integer references Holidays.Company(company_id)
    , population_cnt integer check (population_cnt >= 0)
    , happiness_pct double precision check (happiness_pct >= 0 and happiness_pct <= 100)
);

create table Holidays.Weather(
      weather_id serial primary key
    , description text not null
    , temperature_value smallint not null
    , humidity_value double precision check (humidity_value >= 0 and humidity_value <= 100)
    , pressure_value double precision check (pressure_value >= 0)
    , toxicity_value double precision check (toxicity_value >= 0)
);

create table Holidays.Day(
      day_id serial primary key
    , weather_id integer references Holidays.Weather(weather_id)
    , city_id integer references Holidays.City(city_id)
    , workday_flg boolean not null
    , date_dt date not null
);

create table Holidays.Festival(
      festival_id serial primary key
    , day_id integer references Holidays.Day(day_id)
    , name_nm varchar(255) not null
    , participant_cnt integer check (participant_cnt >= 0)
    , happiness_pct double precision check (happiness_pct >= 0 and happiness_pct <= 100)
);
