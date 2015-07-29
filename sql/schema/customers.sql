DROP SCHEMA PUBLIC CASCADE; CREATE SCHEMA PUBLIC;

CREATE SEQUENCE customer_id_seq;
CREATE TABLE customers (
  id INT NOT NULL PRIMARY KEY DEFAULT NEXTVAL('customer_id_seq'),
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  birthdate DATE,
  birthday VARCHAR(5)
);

CREATE INDEX ON customers (last_name, first_name);
CREATE INDEX ON customers (birthday);
