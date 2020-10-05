DROP DATABASE IF EXISTS employee_DB;

CREATE DATABASE employee_DB;

USE employee_DB;

CREATE TABLE employees (
  id INTEGER AUTO_INCREMENT,
  first_name VARCHAR(30),
  last_name VARCHAR (30),
  role_id INTEGER (10),
  manager_id INTEGER (10) NULL,
  PRIMARY KEY (id)
);
CREATE TABLE roles (
  id INTEGER AUTO_INCREMENT,
  title VARCHAR(30),
  salary DECIMAL (30.2),
  department_id INTEGER (10),
  PRIMARY KEY (id)
);
CREATE TABLE departments (
  id INTEGER AUTO_INCREMENT,
  name VARCHAR(30),
  PRIMARY KEY (id)
);


INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES ("John", "Doe", 1, 2), ("Mike", "Chan", 2, 1), ("Ashley", "Rodriguez", 2, 2), ("Kevin", "Tupik", 2, 2),
("Malia", "Brown", 3, 2), ("Sarah", "Lourd", 4, 2), ("Tom", "Allen", 4, 2), ("Tammer", "Galal", 2, 2);

INSERT INTO roles (title, salary, department_id)
VALUES ("Sales Lead", 100000, 1), ("Salesperson", 80000, 1), ("Lead Engineer", 150000, 2), ("Software Engineer", 120000, 2),
("Accountant", 125000, 3), ("Legal Team Lead", 250000, 4), ("Lawyer", 190000, 4);

INSERT INTO departments (name)
VALUES ("Sales"), ("Engineering"), ("Finance"), ("Legal");

SELECT * FROM employees;
SELECT * FROM roles;
SELECT * FROM departments;

SELECT employees.first_name, employees.last_name, roles.title, roles.salary AS salary , managers.first_name AS manager 
FROM employees 
LEFT JOIN roles ON employees.role_id = roles.id 
LEFT JOIN employees managers ON employees.manager_id = managers.id 
GROUP BY employees.id;


