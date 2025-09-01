CREATE or REPLACE TABLE dbt_object_run_log (
    model_name VARCHAR(255),
    resource_type VARCHAR(255),
    status VARCHAR(255), 
    error_msg VARCHAR(255)
);

select * from dbt_object_run_log;

truncate table dbt_object_run_log




  INSERT INTO MOVIELENS.DEV.dbt_object_run_log 
             (model_name, resource_type, status, start_time, end_time,  run_id, error_message)
      VALUES ('not_null_fact_ratings_user_id', 'test', 'pass', '', '', '2025-09-01 12:05:05.092231+00:00',
              NULL);
    