-- CREATE DATABASE animals_db;

-- USE animals_db;
-- CREATE TABLE pets(
-- user_name VARCHAR(100) NOT NULL,
-- has_pet BOOLEAN NOT NULL,
-- pet_name VARCHAR(255),
-- pet_age INT
-- );

-- INSERT INTO pets(user_name,has_pet,pet_name,pet_age) VALUES("Joe",true,"Bahumat",1);
-- INSERT INTO pets(user_name,has_pet,pet_name,pet_age) VALUES("Joe",true,"Shiva",1);
-- INSERT INTO pets(user_name,has_pet,pet_name,pet_age) VALUES("Zac",true,"Joel",3);
-- INSERT INTO pets(user_name,has_pet) VALUES("Denis",false);
-- SELECT * FROM pets WHERE has_pet = true;

DROP DATABASE IF EXISTS employees_db;
CREATE DATABASE employees_db;

USE employees_db;


CREATE TABLE department(
id INT NOT NULL
name VARCHAR(30) NOT NULL
);

CREATE TABLE role(
id INT NOT NULL
title VARCHAR(30) NOT NULL
salary DECIMAL(5,2)
department_id INT NOT NULL

);

CREATE TABLE employee(
id INT NOT NULL
first_name VARCHAR(30) NOT NULL
last_name VARCHAR(30) NOT NULL
role_id INT NOT NULL
manager_id INT
);

INSERT INTO pets(user_name,has_pet,pet_name,pet_age) VALUES("Joe",true,"Bahumat",1);
INSERT INTO pets(user_name,has_pet,pet_name,pet_age) VALUES("Joe",true,"Shiva",1);
INSERT INTO pets(user_name,has_pet,pet_name,pet_age) VALUES("Zac",true,"Joel",3);
INSERT INTO pets(user_name,has_pet) VALUES("Denis",false);
SELECT * FROM pets WHERE has_pet = true;