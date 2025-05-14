WITH stg_jaffle_shop__customers AS (
  /* one unique customer per row */
  SELECT
    FIRST_NAME,
    LAST_NAME
  FROM {{ ref('jaffle_shop', 'stg_jaffle_shop__customers') }}
), "order" AS (
  SELECT
    *
  FROM stg_jaffle_shop__customers
  ORDER BY
    FIRST_NAME ASC
), stg_customers_sorted_sql AS (
  SELECT
    *
  FROM "order"
)
SELECT
  *
FROM stg_customers_sorted_sql