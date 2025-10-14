{{ config(materialized = 'table') }}

WITH raw_tags AS (
  SELECT * FROM {{ source('Netflix_DBT', 'r_tags') }}
)

SELECT
  userId AS user_id,
  movieId AS movie_id,
  tag,
  TO_TIMESTAMP_LTZ(LOAD_TIME) AS tag_timestamp
FROM raw_tags