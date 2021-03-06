DROP DATABASE IF EXISTS manager_db;
CREATE DATABASE manager_db;
USE manager_db;

CREATE TABLE department (
    id INTEGER UNSIGNED AUTO_INCREMENT,
    deptName VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE eRole (
    id INTEGER UNSIGNED AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INTEGER UNSIGNED,
    CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department(id),
    PRIMARY KEY (id)
);

CREATE TABLE employee (
  id INTEGER UNSIGNED AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INTEGER UNSIGNED,
  manager_id INTEGER UNSIGNED,
  CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES eRole(id),
  CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employee(id),
  PRIMARY KEY (id)
);
