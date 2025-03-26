WITH customers AS (
  SELECT
    ID AS CUSTOMER_ID,
    FIRST_NAME,
    LAST_NAME
  FROM {{ source('jaffle_shop', 'customers') }}
), stg_jaffle_shop__customers AS (
  SELECT
    *
  FROM customers
)
SELECT
  *
FROM stg_jaffle_shop__customers