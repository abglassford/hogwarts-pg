DROP DATABASE IF EXISTS hogwarts_alex_glassford;
CREATE DATABASE hogwarts_alex_glassford;

\c hogwarts_alex_glassford;

CREATE TABLE parents (
  id serial,
  first_name varchar,
  last_name varchar
);
CREATE TABLE students (
  id serial,
  first_name varchar,
  last_name varchar,
  house_id int,
  parent_id int,
  year int
);
CREATE TABLE teachers (
  id serial,
  first_name varchar,
  last_name varchar
);
CREATE TABLE houses (
  id serial,
  name varchar,
  head_id int
);
CREATE TABLE classes (
  id serial,
  subject varchar,
  teacher_id int
);
CREATE TABLE classes_students (
  student_id int,
  class_id int
);
