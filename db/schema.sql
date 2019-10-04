DROP DATABASE IF EXISTS conversations;
DROP SCHEMA IF EXISTS convos;

CREATE DATABASE conversations;
CREATE SCHEMA convos;

\c conversations

CREATE TABLE questions (
  id serial PRIMARY KEY,
  question varchar(1000)
);

CREATE TABLE categories (
  id serial PRIMARY KEY,
  cat_name varchar(20)
);

CREATE TABLE questions_categories (
  id serial PRIMARY KEY,
  question_id integer REFERENCES questions,
  category_id integer REFERENCES categories
);