-- 코드를 입력하세요
SELECT a.PRODUCT_ID, a.PRODUCT_NAME, a.price* sum(b.amount) as 총매출 
from FOOD_PRODUCT a, FOOD_ORDER b
where a.PRODUCT_ID = b.product_id
and b.PRODUCE_DATE between "2022-05-01" and "2022-05-31"
group by a.PRODUCT_ID
order by 총매출 desc, a.product_id asc