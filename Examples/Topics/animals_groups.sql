# Get all raw animals
select *
from
animals
order by `Animal Group`
;


# Computing aggregations on groups of animals
select
`Animal Group`
, group_concat(`Animal Name` order by `Animal Name`) as names
, count(*) as animals
, count(distinct `Animal Group`) as animal_groups
, count(distinct Habitat) as habitats
, count(distinct Diet) as diets
, count(distinct `Body Covering`) as body_coverings
, count(distinct Movement) as movements
from
animals
group by
`Animal Group`
order by
`Animal Group`
;


# NOT WORKING
# If we group, we can select only the grouping columns and aggregations, not the raw records
# MySql will alert:
# Error Code: 1055. Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'imdb_ijs.animals.Animal Name' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by

select
*
from
animals
group by
`Animal Group`
order by
`Animal Group`
;
# Running yet not useful 
# If you group and do not select the grouping column, you will not know which group the aggregations describe
select
count(*) as animals
, count(distinct `Animal Group`) as animal_groups
, count(distinct Habitat) as habitats
, count(distinct Diet) as diets
, count(distinct `Body Covering`) as body_coverings
, count(distinct Movement) as movements
from
animals
group by
`Animal Group`
order by
`Animal Group`
;

# You can choose to group by any of the columns
select
Habitat
, group_concat(`Animal Name` order by `Animal Name`) as names
, count(*) as animals
, count(distinct `Animal Group`) as animal_groups
, count(distinct Habitat) as habitats
, count(distinct Diet) as diets
, count(distinct `Body Covering`) as body_coverings
, count(distinct Movement) as movements
from
animals
group by
Habitat
order by
Habitat
;

# You can aggregate by a  few columns
select
`Animal Group`
, Habitat
, group_concat(`Animal Name` order by `Animal Name`) as names
, count(*) as animals
, count(distinct `Animal Group`) as animal_groups
, count(distinct Habitat) as habitats
, count(distinct Diet) as diets
, count(distinct `Body Covering`) as body_coverings
, count(distinct Movement) as movements
from
animals
group by
`Animal Group`
, Habitat
order by
`Animal Group`
, Habitat
;


# We use "where" to filter raw records
# The clause "having" allows to filter grouped records.
# It must appear after the group clause and before the order clause

# Computing aggregations on groups of animals
select
`Animal Group`
, group_concat(`Animal Name` order by `Animal Name`) as names
, count(*) as animals
, count(distinct `Animal Group`) as animal_groups
, count(distinct Habitat) as habitats
, count(distinct Diet) as diets
, count(distinct `Body Covering`) as body_coverings
, count(distinct Movement) as movements
from
animals
group by
`Animal Group`
having
count(*) > 1 # Selecting only groups with more than one animala
order by
`Animal Group`
;

# We can nest group by statements, getting grouping and aggregations on groupd data.
select
animals
, count(distinct `Animal Group`) as animals_groups_of_that_size
, group_concat(`Animal Group` order by `Animal Group`) as animals_groups_of_that_size_names
from
(
select
`Animal Group`
, count(*) as animals
from
animals
group by
`Animal Group`
) as inSql
group by
animals
order by
animals
;



