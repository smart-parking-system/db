/* Creates role 'sps' for rest-server to use & grants all needed pvivileges */

DO $$
BEGIN
  IF NOT EXISTS (SELECT FROM pg_catalog.pg_roles WHERE rolname = 'sps') THEN
    CREATE USER sps WITH ENCRYPTED PASSWORD '';
  END IF;
END $$;

GRANT ALL PRIVILEGES ON DATABASE sps TO sps;
GRANT ALL PRIVILEGES ON TABLE parking TO sps;
GRANT ALL PRIVILEGES ON TABLE lot TO sps;

