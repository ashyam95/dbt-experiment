SELECT
    category_name,
    ROUND(SUM(sale_dollars), 2) AS total_sales
FROM
    `bigquery-public-data.iowa_liquor_sales.sales`
GROUP BY
    category_name
ORDER BY
    total_sales DESC
