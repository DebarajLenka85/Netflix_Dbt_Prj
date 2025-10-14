{{ config(materialized = 'table') }}

WITH raw_ratings AS (
  SELECT * FROM {{ source('Netflix_DBT', 'r_ratings') }}
)

SELECT
  userId AS user_id,
  movieId AS movie_id,
  rating,
  TO_TIMESTAMP_LTZ(LOAD_TIME) AS rating_timestamp
FROM raw_ratings