WITH stg_jaffle_shop__orders AS (
  /* one order per row */
  SELECT
    *
  FROM {{ ref('jaffle_shop', 'stg_jaffle_shop__orders') }}
), "order" AS (
  SELECT
    *
  FROM stg_jaffle_shop__orders
  ORDER BY
    CUSTOMER_ID ASC
), ordered_sql AS (
  SELECT
    *
  FROM "order"
)
SELECT
  *
FROM ordered_sql