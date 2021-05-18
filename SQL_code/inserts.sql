Insert into Holidays.Activity_Field(field_dsc, diploma_flg)  values
      ('temperature', true)
    , ('temperature', false)
    , ('humidity', true)
    , ('humidity', false)
    , ('pressure', true)
    , ('pressure', false)
    , ('toxicity', true);

Insert into Holidays.Company(name_nm, rating_rate, employees_cnt) values
      ('Uchiha Evolutions', 9, 7)
    , ('Namikadze Lightnings', 10, 7)
    , ('Stenco Enterpises', 5, 7)
    , ('Dutch meteor station', 7, 7)
    , ('Hakob small startup', 0, 1);

Insert into Holidays.Activity_Field(field_dsc, diploma_flg)  values
      ('MIPT FIVT student bachelor', false)
    , ('MeteoScience Meteorology', true);


Insert into Holidays.Research_Associate(fullname_nm, field_id, company_id, happiness_pct) values
      ('Hakob Saghatelyan Asaturovich', 8, 5, 100)
    , ('Itachi Uchiha', 1, 1, 20)
    , ('Sasuke Uchiha', 2, 1, 30)
    , ('Obito Uchiha', 3, 1, 20.5)
    , ('Sarada Uchiha', 4, 1, 80)
    , ('Shisui Uchiha', 5, 1, 60.5)
    , ('Izuna Uchiha', 6, 1, 10)
    , ('Madara Uchiha', 7, 1, 10.5)
    , ('Naruto Uzumaki', 1, 2, 80)
    , ('Minato Namikadze', 9, 2, 50)
    , ('Boruto Uzumaki', 3, 2, 90)
    , ('Napaleon Bonapart', 7, 2, 80)
    , ('Alan Rickman', 4, 2, 70)
    , ('Dniel Deffo', 5, 2, 78.5)
    , ('Deyl Carnergi', 4, 2, 90)
    , ('Dipper Pines', 1,3, 95)
    , ('Mabel Pines', 2, 3, 100)
    , ('Stanford Pines', 3, 3, 70)
    , ('Stanly Pines', 4, 3, 98.9)
    , ('Wendy Carderoy', 5, 3, 80)
    , ('Soos Milkovich', 6, 3, 80)
    , ('Pacifica Northwest Nathaniel', 7, 3, 70)
    , ('Sergey Xoroshilov Vladimrovich', 7, 4, 49)
    , ('Arseniy Panamarev Grigorevich', 6, 4, 50)
    , ('Anton Drazdov Maksimowich', 5, 4, 77)
    , ('Vladimir Putin Vladimirovich', 4, 4, 66)
    , ('Ivan Stonovoy Artemovoich', 3, 4, 12)
    , ('Roman Aliev', 2, 4, 38)
    , ('Arkadiy Arutyunov Borisevich', 1, 4, 83);

Insert into Holidays.City(name_nm, country_nm, company_id, population_cnt, happiness_pct) values
      ('Rome', 'Italy', 1, 28000000, 70.4)
    , ('Athens', 'Greece', 1, 66400, 30.2)
    , ('San Marino', 'San Marino', 1, 33860, 80.6)
    , ('Luxembourg', 'Luxembourg', 1, 660000, 70.5)
    , ('Hanoi', 'Vietnam', 1, 20000, 40.3)
    , ('London', 'Great Britaian', 1, 9000000, 60.6)
    , ('Helsinki', 'Finland', 1, 631000, 90)
    , ('Budapesht', 'Vengia', 1, 1800000, 67.6)
    , ('Stambul', 'Turky', 1, 15000000, 50.55)
    , ('Beyjing', 'China', 1, 21000000, 47.5)
    , ('Berlin', 'Germany', 2, 36000000, 60.4)
    , ('Munich', 'Germany', 2, 14700000, 70.4)
    , ('Hamburg', 'Germany', 2, 2000000, 77.1)
    , ('Amsterdam', 'Netherlands', 2, 82100, 80.9)
    , ('Paris', 'France', 2, 2160000, 74.4)
    , ('Kanna', 'France', 2, 74250, 93.4)
    , ('Bordo', 'France', 2, 24900, 89.6)
    , ('Rio de Janeiro', 'Brazil', 2, 6700000, 45.6)
    , ('San Francisco', 'United States of America', 2, 874000, 50.6)
    , ('Voronej', 'Russia', 2, 1200000, 60.7)
    , ('Vladivostok', '', 2, 600000, 70.7)
    , ('Singapore', 'Singapore', 3, 5700000, 60.8)
    , ('Talin', 'Estonia', 3, 426000, 70.8)
    , ('Yerevan', 'Armenia', 3, 1500000, 0)
    , ('Moscow', 'Russia', 3, 10000000, 50.7)
    , ('Barselona', 'Spain', 3, 2000000, 70.9)
    , ('Madrid', 'Spain', 3, 5000000, 60.7)
    , ('Tokyo', 'Japan', 3, 92000000, 50.5)
    , ('Sydney', 'Australia', 3, 5000000, 70.7)
    , ('Kazan', 'Russia', 3, 11000000, 30.7)
    , ('Tambov', 'Russia', 3, 700000, 70.7)
    , ('Brusel', 'Belgia', 4, 2200000, 77.9)
    , ('Monako', 'Monako', 4, 40000, 80.7)
    , ('Mehico', 'Mexico', 4, 70000000, 48.1)
    , ('Kito', 'Ekvador', 4, 40000000, 60.5)
    , ('Shanhay', 'China', 4, 12000000, 63.7)
    , ('Blagoveshenck', 'Russia', 4, 600000, 74.4)
    , ('Kaliningrad', 'Russia', 4, 437800, 60.4)
    , ('Aastrahan', 'Russia', 4, 526520, 50.5)
    , ('Oslo', 'Norway', 4, 634000, 97.7)
    , ('Stockholm', 'Sweden', 4, 1000000, 96.7);