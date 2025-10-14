WITH raw_links AS (
  SELECT * FROM {{ source('Netflix_DBT', 'r_links') }}
)

SELECT
  movieId AS movie_id,
  imdbId AS imdb_id,
  tmdbId AS tmdb_id, 
  load_time as load_time
FROM raw_links