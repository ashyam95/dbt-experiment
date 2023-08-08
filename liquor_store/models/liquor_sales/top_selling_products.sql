SELECT
    item_description,
    ROUND(SUM(sale_dollars), 2) AS total_sales
FROM
    `bigquery-public-data.iowa_liquor_sales.sales`
GROUP BY
    item_description
ORDER BY
    total_sales DESC
LIMIT
    10
