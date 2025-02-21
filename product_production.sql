SELECT 
    sales.order_items.product_id, 
    SUM(sales.order_items.list_price) AS total_sales ,
    CASE
        WHEN SUM(sales.order_items.list_price) > 500 THEN 0.30
        WHEN SUM(sales.order_items.list_price) > 300 THEN 0.20
        ELSE 0.10
    END AS RATE_OF_PRODUCTION
FROM 
    sales.order_items
GROUP BY 
    sales.order_items.product_id