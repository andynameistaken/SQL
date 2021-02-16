CREATE TABLE users (
  id serial UNIQUE NOT NULL,
  username char(25),
  enabled boolean DEFAULT TRUE
  );

ALTER TABLE users
RENAME TO all_users;

ALTER TABLE all_users
RENAME COLUMN username to full_name;

ALTER TABLE all_users
ALTER COLUMN full_name TYPE varchar(25);

ALTER TABLE all_users
ALTER COLUMN full_name SET NOT NULL ;

ALTER TABLE all_users
ADD COLUMN last_login timestamp default now();

DROP TABLE all_users;

CREATE TABLE users (
    id serial UNIQUE NOT NULL,
    full_name character varying(25) NOT NULL,
    enabled boolean DEFAULT true,
    last_login timestamp without time zone DEFAULT now()
);


