# Database Support for SPS
Contains scripts & other stuff that supports the database

## How To Run:
 - Clone the repo
 - Install & start psql
 - Login into psql prompt (your user has to have elevated privileges)
 - Change current directory to `db/sql/` using psqls `\cd` directive (`\cd db/sql/`)
 - Run `deploy.sql` script (`\i deploy.sql`)

### Additional steps to take, if rest-server fails to start
 - Change `md5` to `trust` for `local all` in `pg_hba.conf` for your cluster

