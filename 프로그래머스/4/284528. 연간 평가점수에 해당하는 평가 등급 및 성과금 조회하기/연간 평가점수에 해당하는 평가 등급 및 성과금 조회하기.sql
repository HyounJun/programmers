with avg_score as (
    select EMP_NO
          ,avg(SCORE) as SCORE
    from HR_GRADE  
    group by EMP_NO
)

select HE.EMP_NO 
      ,HE.EMP_NAME 
      ,case when SCORE >= 96 then 'S'
            when SCORE >= 90 then 'A'
            when SCORE >= 80 then 'B'
            else 'C' end as GRADE  
      ,case when SCORE >= 96 then SAL * 0.2
            when SCORE >= 90 then SAL * 0.15
            when SCORE >= 80 then SAL * 0.1
            else SAL *0  end as BONUS
from avg_score as avgsc
    inner join HR_EMPLOYEES as HE on avgsc.EMP_NO = HE.EMP_NO
order by HE.EMP_NO