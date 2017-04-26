--create new user
DROP USER IF EXISTS denormal_user;
CREATE USER denormal_user;

--create DB
DROP DATABASE IF EXISTS denormal_cars;
CREATE DATABASE denormal_cars;

--switch to DB
\c denormal_cars

--alter owner
ALTER DATABASE denormal_cars OWNER TO denormal_user;

--Run script
\i scripts/denormal_data.sql

--Inspect database
\ds

SELECT make_title
FROM car_models;

SELECT model_title
FROM car_models
WHERE make_code = 'VOLKS';

SELECT make_code, model_code, model_title, year
FROM car_models
WHERE make_code = 'LAM';

SELECT *
FROM car_models
WHERE year <= 2010 AND year >= 2015;