select ANIMAL_TYPE 
        , Nname as NAME
        , SEX_UPON_INTAKE
from (
select *
        ,case when NAME is null then 'No name' else NAME end as Nname
from ANIMAL_INS
) as null_name
order by ANIMAL_ID
