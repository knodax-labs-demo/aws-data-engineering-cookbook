CREATE TABLE sales_optimized (
    order_id INT,
    customer_id INT,
    product_id INT,
    sales_amount DECIMAL(10,2),
    order_date DATE
)
DISTKEY(customer_id)
SORTKEY(order_date);
