USE abc;

CREATE TABLE region(
REGION_ID int,
REGION_NAME varchar(50),
PRIMARY KEY (REGION_ID)
);

CREATE TABLE country(
COUNTRY_ID int,
COUNTRY_NAME varchar(50),
REGION_ID int,
PRIMARY KEY (COUNTRY_ID),
FOREIGN KEY (REGION_ID) REFERENCES region(REGION_ID)
);

CREATE TABLE location(
LOCATION_ID int,
COUNTRY_ID int,
STREET_ADRESS varchar(100),
POSTAL_CODE int,
CITY varchar(50),
STATE_PROVINCE varchar(50),
PRIMARY KEY (LOCATION_ID),
FOREIGN KEY (COUNTRY_ID) REFERENCES country(COUNTRY_ID)
);

CREATE TABLE department(
LOCATION_ID int,
DEPARTMENT_ID int,
DEPARTMENT_NAME varchar (50),
PRIMARY KEY (DEPARTMENT_ID),
FOREIGN KEY (LOCATION_ID) REFERENCES location(LOCATION_ID)
);

CREATE TABLE employees (
EMPLOYEE_ID int,
DEPARTMENT_ID int,
FIRST_NAME varchar(50),
LAST_NAME varchar(50),
EMAIL varchar(100),
PHONE_NUMBER int,
SALARY float,
HIRE_DATE DATE,
PRIMARY KEY (EMPLOYEE_ID),
FOREIGN KEY (DEPARTMENT_ID) REFERENCES department(DEPARTMENT_ID)
);

CREATE TABLE job(
JOB_ID int,
JOB_TITLE varchar,
MIN_SALARY float,
Max_SALARY float,
PRIMARY KEY (JOB_ID),
);

CREATE TABLE job_history(
EMPLOYEE_ID int,
START_DATE Date,
END_DATE Date,
JOB_ID int,
PRIMARY KEY (EMPLOYEE_ID,START_DATE,JOB_ID),
FOREIGN KEY (JOB_ID) REFERENCES job(JOB_ID)
);
