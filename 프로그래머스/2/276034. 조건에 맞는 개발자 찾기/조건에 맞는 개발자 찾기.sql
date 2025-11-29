select DISTINCT ID
      ,EMAIL
      ,FIRST_NAME
      ,LAST_NAME
from DEVELOPERS as d
    left join SKILLCODES as s on (d.SKILL_CODE & s.CODE) > 0 
where NAME in ('Python','C#')
order by ID 