# Employee-Tracker

Project Title: Employee Tracker

Description: This project uses node, express and MySQL to track a client's employees. The business owner wants to be able to view and manage the departments, roles and employees in their company so they can organize and plan their business. The database schema contains three tables: employees, roles, and departments.

    departments:
        id - INT PRIMARY KEY
        name - VARCHAR(30) to hold department name

    roles:
        id - INT PRIMARY KEY
        title -  VARCHAR(30) to hold role title
        salary -  DECIMAL to hold role salary
        department_id -  INT to hold reference to department role belongs to

    employees:
        id - INT PRIMARY KEY
        first_name - VARCHAR(30) to hold employee first name
        last_name - VARCHAR(30) to hold employee last name
        role_id - INT to hold reference to role employee has
        manager_id - INT to hold reference to another employee that manager of the current employee. This field may be null if the employee has no manager

     It uses a CLI application that allows users to:
        Add departments, roles, employees
        View departments, roles, employees
        Update employee roles

Installation: Be sure to use npm init, install, mysql, express, inquirer. Change the appropriate user and password in employee_tracker.js file. Load employee_DB.sql into MySQL. 

To Run: node employee_tracker.js 

Authored By: Melanie Cisler

Demo Video: https://drive.google.com/file/d/1o02vmPeuVxMV7eKOJ03a18VB2PIrtZiJ/view  
