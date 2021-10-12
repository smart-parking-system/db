
CREATE TABLE IF NOT EXISTS parking (
  id          int           PRIMARY KEY NOT NULL,
  name        varchar(99)   NOT NULL,
  location    varchar(99)   NOT NULL
);

CREATE TABLE IF NOT EXISTS lots (
  id          int           PRIMARY KEY NOT NULL,
  parking_id  int           NOT NULL,
  status      int           NOT NULL DEFAULT 0,

  FOREIGN KEY (parking_id) REFERENCES parking(id)
);

