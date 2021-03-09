DROP DATABASE IF EXISTS employees_db;
CREATE DATABASE employees_db;

USE employees_db;


CREATE TABLE department(
id INT AUTO_INCREMENT NOT NULL,
name VARCHAR(64) NOT NULL
PRIMARY KEY(id)
);

CREATE TABLE role(
id INT AUTO_INCREMENT,
title VARCHAR(64) NOT NULL,
salary DECIMAL(5,2),
department_id INT,
PRIMARY KEY (id),
FOREIGN KEY(department_id) REFERENCES department(id) ON DELETE SET NULL
);

CREATE TABLE employee(
id INT AUTO_INCREMENT,
first_name VARCHAR(64) NOT NULL,
last_name VARCHAR(64) NOT NULL,
role_id INT NOT NULL,
manager_id INT,
PRIMARY KEY (id),
FOREIGN KEY(role_id) REFERENCES role(id),
FOREIGN KEY(manager_id) REFERENCES employee(id) ON DELETE SET NULL
);