CREATE SEQUENCE purchases_id_seq;
CREATE TABLE purchases (
  id INT NOT NULL PRIMARY KEY
     DEFAULT NEXTVAL('purchases_id_seq'),
  customer_id INT NOT NULL,
  address_id INT,
  coupon_id INT,
  created_at TIMESTAMP,
  amount INT,
  points INT NOT NULL
);

CREATE INDEX ON purchases (customer_id);
CREATE INDEX ON purchases (address_id);
CREATE UNIQUE INDEX ON purchases (coupon_id);
CREATE INDEX ON purchases (created_at);
