select  HD.DEPT_ID
        ,DEPT_NAME_EN
        ,round(avg(SAL),0) as AVG_SAL
from HR_DEPARTMENT as HD
    inner join HR_EMPLOYEES as HE on HD.DEPT_ID = HE.DEPT_ID
group by DEPT_ID
order by AVG_SAL desc