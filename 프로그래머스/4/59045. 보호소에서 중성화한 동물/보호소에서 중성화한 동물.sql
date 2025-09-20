with Neu as (
    select *
    from ANIMAL_INS
    where SEX_UPON_INTAKE Like  'Intact %'
    
)
select ou.ANIMAL_ID as ANIMAL_ID
      ,ou.ANIMAL_TYPE as ANIMAL_TYPE
      ,ou.NAME as NAME
from ANIMAL_OUTS as ou
    inner join  Neu as eu on ou.ANIMAL_ID = eu.ANIMAL_ID
where ou.SEX_UPON_OUTCOME like 'Neutered%' or ou.SEX_UPON_OUTCOME like 'Spayed%' 


