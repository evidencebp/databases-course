Select 
concat('Select count(*) as cnt from imdb_ijs.'
, TABLE_NAME
, ' where length('
, Column_name
, ') = '
,  CHARACTER_MAXIMUM_LENGTH
, ' ;') as query
from 
INFORMATION_SCHEMA.Columns
where
table_schema = 'imdb_ijs'
and data_type = 'varchar'
order by table_name, Column_name
;
