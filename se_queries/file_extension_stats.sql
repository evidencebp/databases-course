# Stats for file extention
# into file_extension_stats.csv
select
extension 
, count(distinct repo_name) as repos
, count(*) as files
from
general.file_properties
group by 
extension
having
count(distinct repo_name) > 1
and
count(*) > 100
order by
count(distinct repo_name) desc
, count(*) desc
, extension
;