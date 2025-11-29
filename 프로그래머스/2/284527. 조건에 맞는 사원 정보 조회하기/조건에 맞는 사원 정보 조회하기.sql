with GRADE as (
    select EMP_NO
           ,sum(SCORE) as SCORE
    from HR_GRADE 
    group by EMP_NO
)

select SCORE
      ,HE.EMP_NO
      ,EMP_NAME
      ,POSITION
      ,EMAIL
from GRADE as HG
    inner join HR_EMPLOYEES  as HE on HE.EMP_NO  = HG.EMP_NO
order by SCORE desc
limit 1