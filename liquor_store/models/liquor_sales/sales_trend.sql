SELECT
    DATE,
    ROUND(SUM(sale_dollars), 2) AS total_sales
FROM
    `bigquery-public-data.iowa_liquor_sales.sales`
GROUP BY
    DATE
ORDER BY
    DATE
