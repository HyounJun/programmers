select BOOK_ID
      ,AUTHOR_NAME
      ,DATE_FORMAT(PUBLISHED_DATE,'%Y-%m-%d') as PUBLISHED_DATE
from BOOK as B
    inner join AUTHOR as A on B.author_id = A.author_id
where category = '경제'
order by PUBLISHED_DATE asc