# Just store the Json as a string
drop table if exists flex;

CREATE TABLE flex (
	meaning varchar(255),
	flex_schema varchar(1000)
);

# Json in MySql
insert into flex values (
'Person',
'{"first_name": "John",
  "last_name": "Smith",
  "is_alive": true,
  "age": 27,
"address": {
    "street_address": "21 2nd Street", "city": "New York",
    "state": "NY", "postal_code": "10021-3100" },
   "children": ["Catherine","Thomas","Trevor"],
  "spouse": null
}
');

# Bad Json in Mysql (inserted just as well...)
insert into flex values ('valid json',
'{"first_name": "John",
  "last_na
');

# Just store the Json as a Json type
drop table if exists flex;

CREATE TABLE flex (
	meaning varchar(255),
	flex_schema Json
);


# Json in MySql
insert into flex values ('Person',
'{"first_name": "John",
  "last_name": "Smith",
  "is_alive": true,
  "age": 27,
"address": {
    "street_address": "21 2nd Street", "city": "New York",
    "state": "NY", "postal_code": "10021-3100" },
   "children": ["Catherine","Thomas","Trevor"],
  "spouse": null
}
');

# Bad Json in Mysql (Fails as it should)
insert into flex values ('invalid json',
'{"first_name": "John",
  "last_na
');

insert into flex values (
'multiple values for the same key',
'{"first_name": "John",
"first_name": "Not John",
"first_name": "Maybe John"
}
');

select 
* 
from flex;

# Getting the keys (note that there is no nesting)
select 
* 
, JSON_KEYS(flex_schema)
from flex;


select 
flex_schema->"$.address"  as address
, flex_schema->"$.address.city"  as city

from flex
where
meaning = 'Person';


# Non existing field (null and not and error)
select 
flex_schema->"$.non_existing_field"  
from flex
where
meaning = 'Person';

# Partialy existing field (null and not and error)
select 
flex_schema->"$.address" as address 
, JSON_CONTAINS_PATH(flex_schema, 'one', "$.address" ) as is_key_there
from flex;


# Arrays
select 
flex_schema->"$.children" as children 
, JSON_LENGTH(flex_schema, "$.children" ) as children_num
, flex_schema->"$.children[0]" as first_child
from flex;


