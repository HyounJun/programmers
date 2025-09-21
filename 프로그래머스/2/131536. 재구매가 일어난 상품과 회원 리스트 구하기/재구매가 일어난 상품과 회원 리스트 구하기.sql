-- 코드를 입력하세요
SELECT user_id ,PRODUCT_ID
from ONLINE_SALE 
group by user_id , PRODUCT_ID
having count(*)>=2
order by USER_ID ASC, PRODUCT_ID DESC