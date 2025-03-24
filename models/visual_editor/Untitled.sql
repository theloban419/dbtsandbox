WITH input_1 AS (
  SELECT
    *
  FROM {{ ref('stg_jaffle_shop__orders') }}
), untitled_sql AS (
  SELECT
    *
  FROM input_1
)
SELECT
  *
FROM untitled_sql