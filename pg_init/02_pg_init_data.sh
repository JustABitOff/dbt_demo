#!/bin/bash
sleep 10

# Load data from CSV into the database
psql -U postgres -d postgres -c "\copy customers FROM '/pg_init/raw_customers.csv' DELIMITER ',' CSV HEADER;"
psql -U postgres -d postgres -c "\copy orderitems FROM '/pg_init/raw_orderitems.csv' DELIMITER ',' CSV HEADER;"
psql -U postgres -d postgres -c "\copy orders FROM '/pg_init/raw_orders.csv' DELIMITER ',' CSV HEADER;"
psql -U postgres -d postgres -c "\copy products FROM '/pg_init/raw_products.csv' DELIMITER ',' CSV HEADER;"