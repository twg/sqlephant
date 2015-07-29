CREATE SEQUENCE coupons_id_seq;
CREATE TABLE coupons (
  id INT NOT NULL PRIMARY KEY
     DEFAULT NEXTVAL('coupons_id_seq'),
  customer_id INT NOT NULL,
  issued_at TIMESTAMP,
  redeemed_at TIMESTAMP,
  expires_at TIMESTAMP,
  book_title VARCHAR(255),
  book_cost INT
);

CREATE INDEX ON coupons (customer_id);
CREATE INDEX ON coupons (issued_at);
CREATE INDEX ON coupons (redeemed_at);
CREATE INDEX ON coupons (expires_at);
