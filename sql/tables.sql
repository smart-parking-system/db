/* Create tables */

CREATE TABLE IF NOT EXISTS parking (
  id          int           PRIMARY KEY NOT NULL,
  name        varchar(99)   NOT NULL,
  location    varchar(99)   NOT NULL
);

CREATE TABLE IF NOT EXISTS lot (
  id          int           PRIMARY KEY NOT NULL,
  parking_id  int           NOT NULL REFERENCES parking(id),
  status      int           NOT NULL DEFAULT 0,
  internal_id int           NOT NULL
);

