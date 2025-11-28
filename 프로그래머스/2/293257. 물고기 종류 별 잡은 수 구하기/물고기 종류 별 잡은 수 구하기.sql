select count(*) as FISH_COUNT
      ,f2.FISH_NAME
from FISH_INFO as f1
    left join FISH_NAME_INFO as f2 on f1.FISH_TYPE = f2.FISH_TYPE
group by FISH_NAME
order by FISH_COUNT desc