WITH customers AS (
  SELECT
    ID AS CUSTOMER_ID,
    FIRST_NAME,
    LAST_NAME
  FROM {{ source('jaffle_shop', 'customers') }}
), rename_1 AS (
  SELECT
    *
    RENAME (CUSTOMER_ID AS "test customer", FIRST_NAME AS "test first", LAST_NAME AS "test last")
  FROM customers
), test_stg_jaffle_shop__customers_sql AS (
  SELECT
    *
  FROM rename_1
)
SELECT
  *
FROM test_stg_jaffle_shop__customers_sql