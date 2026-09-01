-- Target relational schema for transformed order data
DROP TABLE IF EXISTS fact_orders;

CREATE TABLE fact_orders (
    order_id VARCHAR(50) PRIMARY KEY,
    order_date DATE,
    customer_city VARCHAR(100),
    amount DECIMAL(10, 2),
    channel VARCHAR(50)
);