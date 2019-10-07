DROP DATABASE IF EXISTS conversations;
DROP SCHEMA IF EXISTS convos;

CREATE DATABASE conversations;
CREATE SCHEMA convos;

\c conversations

CREATE TABLE questions (
  id serial PRIMARY KEY,
  useless_number_one integer,
  useless_number_two integer,
  question varchar(1000),
  question_two varchar(1000)
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

\copy characteristics(id, product_id, char_name) FROM '~/code/reviews-service/characteristics.csv' DELIMITER ',' CSV HEADER;