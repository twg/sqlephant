CREATE SEQUENCE addresses_id_seq;
CREATE TABLE addresses (
  id INT NOT NULL PRIMARY KEY
     DEFAULT NEXTVAL('addresses_id_seq'),
  customer_id INT NOT NULL,
  description VARCHAR(255),
  city VARCHAR(255),
  region VARCHAR(255),
  country CHAR(2)
);

CREATE INDEX ON addresses (customer_id);
CREATE INDEX ON addresses (country, region, city);
