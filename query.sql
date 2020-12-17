with t as (
	select flat->>'measurementType' as measurementType, flat->>'measurementTypeID'  as measurementTypeID
	from mof
)
select measurementType, measurementTypeID, count(*)
from t
group by measurementType, measurementTypeID
order by count(*) desc