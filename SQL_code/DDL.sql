create schema Holidays;

create table Holidays.ActivityField(
      field_id serial primary key
    , field varchar(255) not null
    , diploma boolean not null
);

create table Holidays.Company(
      company_id serial primary key
    , name varchar(255) not null
    , rating smallint check (rating >= 0 and rating <= 10)
    , employees_count integer check (employees_count >= 0)
);

create table Holidays.ResearchAssociate(
      fullname varchar(255) not null
    , id serial primary key
    , field_id integer references Holidays.ActivityField(field_id)
    , company_id integer references Holidays.Company(company_id)
    , happiness double precision check (happiness >= 0 and happiness <= 100)
);

create table Holidays.City(
      name varchar(255) not null
    , country varchar(255) not null
    , city_id serial primary key
    , company_id integer references Holidays.Company(company_id)
    , population integer check (population >= 0)
    , happiness double precision check (happiness >= 0 and happiness <= 100)
);

create table Holidays.Weather(
      weather_id serial primary key
    , description text not null
    , temperature smallint not null
    , humidity double precision check (humidity >= 0 and humidity <= 100)
    , pressure double precision check (pressure >= 0)
    , toxicity double precision check (toxicity >= 0)
);

create table Holidays.Day(
      day_id serial primary key
    , weather_id integer references Holidays.Weather(weather_id)
    , city_id integer references Holidays.City(city_id)
    , workday boolean not null
    , date date not null
);

create table Holidays.Festival(
      festival_id serial primary key
    , day_id integer references Holidays.Day(day_id)
    , name varchar(255) not null
    , participants integer check (participants >= 0)
    , happiness double precision check (happiness >= 0 and happiness <= 100)
)
