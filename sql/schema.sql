DROP DATABASE IF EXISTS hogwarts_alex_glassford;
CREATE DATABASE hogwarts_alex_glassford;

\c hogwarts_alex_glassford;

CREATE TABLE students (
  id serial,
  first_name varchar,
  last_name varchar,
  house_id int,
  year int
);
CREATE TABLE teachers (
  id serial,
  first_name varchar,
  last_name varchar,
  house_id int
);
CREATE TABLE parents (
  id serial,
  first_name varchar,
  last_name varchar,
  chil_id int
);
CREATE TABLE houses (
  id serial,
  student varchar,
  name varchar,
  head int
);
