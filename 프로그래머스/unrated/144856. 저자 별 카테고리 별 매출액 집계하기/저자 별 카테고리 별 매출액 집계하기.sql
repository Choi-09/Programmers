-- 코드를 입력하세요
SELECT a.AUTHOR_ID, a.AUTHOR_NAME, b.CATEGORY, sum(bs.sales*b.price) as SALES
from book b, AUTHOR a, BOOK_SALES bs
where bs.SALES_DATE between "2022-01-01" and  "2022-01-31"
and b.AUTHOR_ID = a.AUTHOR_ID
and b.book_id = bs.book_id
group by a.AUTHOR_NAME, b.category
order by a.AUTHOR_ID, b.category desc