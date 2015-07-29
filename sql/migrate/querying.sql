
-- >> Querying

SELECT SUM(points) FROM purchases WHERE customer_id=1;
-- 10

SELECT SUM(book_cost) FROM coupons WHERE customer_id=1;

SELECT id FROM coupons WHERE customer_id=1 AND expires_at < NOW() AND redeemed_at IS NULL;


--

SELECT region, country, SUM(book_cost) FROM coupons
  LEFT JOIN purchases ON purchases.coupon_id=coupons.id
  LEFT JOIN addresses ON purchases.address_id=addresses.id
  GROUP BY region, country;
