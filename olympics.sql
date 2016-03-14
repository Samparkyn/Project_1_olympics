DROP TABLE Events;
DROP TABLE Athletes;
DROP TABLE Nations;


CREATE TABLE Nations (
  id serial4 PRIMARY KEY,
  name varchar(255),
  flag_url varchar(255)
);

CREATE TABLE Athletes (
  id serial4 PRIMARY KEY,
  nation_id int4 references Nations(id),
  name varchar(255)
);

CREATE TABLE Events (
  id serial4 PRIMARY KEY,
  event_name varchar(255),
  gold_id int4 references Athletes(id),
  silver_id int4 references Athletes(id),
  bronze_id int4 references Athletes(id)
);




