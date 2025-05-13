WITH stg_jaffle_shop__customers AS (
  SELECT
    CUSTOMER_ID,
    FIRST_NAME,
    LAST_NAME
  FROM {{ ref('stg_jaffle_shop__customers') }}
), order_1 AS (
  SELECT
    *
  FROM stg_jaffle_shop__customers
  ORDER BY
    FIRST_NAME ASC
), stg_jaffle_shop_ordered AS (
  SELECT
    *
  FROM order_1
)
SELECT
  *
FROM stg_jaffle_shop_ordered