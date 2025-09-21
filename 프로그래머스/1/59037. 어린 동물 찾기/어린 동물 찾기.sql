select ANIMAL_iD,NAME
from(
select *
from ANIMAL_INS
where INTAKE_CONDITION != 'Aged'
order by DATETIME
) as f
order by ANIMAL_iD