WITH stg_jaffle_shop__customers AS (
  /* one unique customer per row */
  SELECT
    *
  FROM {{ ref('jaffle_shop', 'stg_jaffle_shop__customers') }}
), "order" AS (
  SELECT
    *
  FROM stg_jaffle_shop__customers
  ORDER BY
    FIRST_NAME ASC
), reordered_sql AS (
  SELECT
    *
  FROM "order"
)
SELECT
  *
FROM reordered_sql