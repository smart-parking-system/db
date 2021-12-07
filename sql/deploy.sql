/* Deploys SPS db */

DROP DATABASE IF EXISTS sps;
CREATE DATABASE sps;

\c sps

\i tables.sql
\i user.sql

