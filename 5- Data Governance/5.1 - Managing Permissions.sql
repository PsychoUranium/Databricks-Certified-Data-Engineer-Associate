CREATE SCHEMA IF NOT EXISTS dbricks.hr_db;

CREATE OR REPLACE TABLE dbricks.hr_db.employees (id INT, name STRING, salary DOUBLE, city STRING);

INSERT INTO dbricks.hr_db.employees
VALUES (1, "Anna", 2500, "Paris"),
       (2, "Thomas", 3000, "London"),
       (3, "Bilal", 3500, "Paris"),
       (4, "Maya", 2000, "Paris"),
       (5, "Sophie", 2500, "London"),
       (6, "Adam", 3500, "London"),
       (7, "Ali", 3000, "Paris");

CREATE VIEW dbricks.hr_db.paris_emplyees_vw
AS SELECT * FROM dbricks.hr_db.employees WHERE city = 'Paris';
------------------------------------------------------

GRANT SELECT, MODIFY, CREATE ON SCHEMA dbricks.hr_db TO hr_team;

GRANT USAGE ON SCHEMA dbricks.hr_db TO hr_team;

GRANT SELECT ON VIEW dbricks.hr_db.paris_emplyees_vw TO `adam@derar.cloud`;

SHOW GRANTS ON SCHEMA dbricks.hr_db;

SHOW GRANTS ON VIEW dbricks.hr_db.paris_emplyees_vw;
