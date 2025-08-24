# Problems in names

# A simple yet effective way to find data problems is simply looking at the raw data.
# Try it and look for problems.
select *
from actors
limit 1000
;

# There are 817718 actors
select  count(*) from actors;

# Actor with a nickname - 217 actors
# Can you fix that?
select count(*)
from actors
where last_name like "%'%'%";


# 22 actors with only a nickname - can you fix that?
select count(*)
from actors
where last_name like "'%'";

# Common word, less common names -490 actors
select count(*)
from actors
where first_name = "The";


# none a-z - 190,328 actors (digits, initial, etc.)
select *
from actors
where
lower(first_name) regexp('[^a-zA-Z]')
OR
lower(first_name) regexp('[^a-zA-Z]')
;

