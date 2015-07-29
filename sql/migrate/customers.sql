-- #1  Jones Jackson   10   220 Elm St.
-- Jackson, Jones               1973-03-18
-- 109         2015-08-17   2215.99

INSERT INTO customers (id, first_name, last_name, birthdate, birthday)
  VALUES (1, 'Jones', 'Jackson', '1973-03-18', '03-18');

INSERT INTO addresses (customer_id, description)
  VALUES (1, '220 Elm St.');

INSERT INTO purchases (customer_id, points)
  VALUES (1, 10);

INSERT INTO coupons (id, customer_id, issued_at, redeemed_at, book_title, book_cost)
  VALUES (109, 1, '2015-02-17', '2015-08-17', 'War of the Worlds', 1599);

INSERT INTO purchases (customer_id, coupon_id, points)
  VALUES (1, 109, 0);

-- #2  Helen Parr      35   660 Maple Ave. / 209 Cottage Ct.
-- Parr, Helen                  1978-09-28
-- 111         2015-06-20   29.95

INSERT INTO customers (id, first_name, last_name, birthdate, birthday)
  VALUES (2, 'Helen', 'Parr', '1973-03-18', '03-18');

INSERT INTO addresses (customer_id, description)
  VALUES (2, '660 Maple Ave.');

INSERT INTO addresses (customer_id, description)
  VALUES (2, '209 Cottage Ct.');

INSERT INTO purchases (customer_id, points)
  VALUES (2, 35);

INSERT INTO coupons (id, customer_id, issued_at, redeemed_at, book_title, book_cost)
  VALUES (111, 2, '2015-02-02', '2015-06-20', 'War of the Roses', 2995);

INSERT INTO purchases (customer_id, coupon_id, points)
  VALUES (2, 111, 0);

-- #3  Blake Smith     9    4404 Giganto St. Apt. 16
-- Smith, Blake                 1983-06-20
-- 114         2015-06-28   15.95

INSERT INTO customers (id, first_name, last_name, birthdate, birthday)
  VALUES (3, 'Blake', 'Smith', '1973-03-18', '03-18');

INSERT INTO addresses (customer_id, description)
  VALUES (3, '4404 Giganto St. Apt. 16');

INSERT INTO purchases (customer_id, points)
  VALUES (3, 9);

INSERT INTO coupons (id, customer_id, issued_at, redeemed_at, book_title, book_cost)
  VALUES (111, 3, '2015-02-02', '2015-06-20', 'War of the Roses', 2995);

INSERT INTO purchases (customer_id, coupon_id, points)
  VALUES (2, 111, 0);
