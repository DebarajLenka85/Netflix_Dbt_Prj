WITH raw_genome_scores AS (
  SELECT * FROM {{ source('Netflix_DBT', 'r_genome_scores') }}
)

SELECT
  movieId AS movie_id,
  tagId AS tag_id,
  relevance, 
  load_time
FROM raw_genome_scores