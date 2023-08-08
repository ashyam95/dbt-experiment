SELECT
    store_number,
    store_name,
    city,
    county,
    category_name,
    vendor_name,
    ROUND(SUM(sale_dollars), 2) AS total_sales,
    ROUND(SUM(volume_sold_liters), 2) AS total_volume_sold
FROM
    `bigquery-public-data.iowa_liquor_sales.sales`
GROUP BY
    store_number,
    store_name,
    city,
    county,
    category_name,
    vendor_name
