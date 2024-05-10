create table cars
(
    make                   text,
    model                  text,
    year                   int,
    fuel_type              text,
    engine_hp              int,
    engine_cylinders_count int,
    transmission_type      text,
    driven_wheels          text,
    door_count             int,
    market_category        text,
    vehicle_size           text,
    vehicle_style          text,
    highway_mpg            int,
    city_mpg               int,
    popularity             int,
    msrp                   int
);

COPY cars FROM '/data/cars.csv' DELIMITER ',' CSV HEADER;
