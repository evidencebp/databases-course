# All - plan
explain  
select *
from
movies
;

# Analyze
EXPLAIN ANALYZE
select  *
from
movies
;

# Scan getting only id
EXPLAIN ANALYZE
select  id
from
movies
;

# key
explain  
select *
from
movies
where id = 7
;

# No key
explain  
select  *
from
movies
where year = 1990
;