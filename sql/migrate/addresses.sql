-- Set the city for all imported records which were missing this information
UPDATE addresses SET city='Springfield', region='OH', country='US'
  WHERE country IS NULL;

-- Set customer purchase addresses to their last known address
UPDATE purchases SET address_id=(
  SELECT id FROM addresses
    WHERE customer_id=purchases.customer_id ORDER BY id DESC LIMIT 1
);
