CREATE TABLE fleets (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR NOT NULL
);

CREATE TABLE ships (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR NOT NULL,
  date_built INTEGER,
  fleet_id INTEGER
);

CREATE TABLE duties (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR NOT NULL,
  start_date DATE,
  end_date DATE,
  sailor_id INTEGER,
  rank_id INTEGER,
  ship_id INTEGER
);

CREATE TABLE ranks (
  id SERIAL PRIMARY KEY NOT NULL,
  rank VARCHAR NOT NULL
);

CREATE TABLE sailors (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  date_of_birth INTEGER,
  rank_id INTEGER
);