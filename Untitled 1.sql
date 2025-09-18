select * from MOVIELENS.INFORMATION_SCHEMA.tables
where table_schema = 'RAW';


create table RAW_GENOME_SCORES as select * from MOVIELENS.RAW.RAW_GENOME_SCORES;
create table RAW_GENOME_TAGS as select * from MOVIELENS.RAW.RAW_GENOME_TAGS;
create table RAW_TAGS as select * from MOVIELENS.RAW.RAW_TAGS;
create table RAW_LINKS as select * from MOVIELENS.RAW.RAW_LINKS;
create table RAW_MOVIES as select * from MOVIELENS.RAW.RAW_MOVIES;
create table RAW_RATINGS as select * from MOVIELENS.RAW.RAW_RATINGS;
