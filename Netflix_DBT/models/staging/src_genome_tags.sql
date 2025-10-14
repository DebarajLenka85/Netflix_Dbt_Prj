WITH raw_genome_tags AS (
  SELECT * FROM {{ source('Netflix_DBT', 'r_genome_tags') }}
)

SELECT
  tagId AS tag_id,
  tag,
  load_time as load_time
FROM raw_genome_tags