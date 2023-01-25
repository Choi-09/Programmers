-- 코드를 입력하세요
SELECT m.MEMBER_NAME, r.REVIEW_TEXT, date_format(r.REVIEW_DATE, "%Y-%m-%d") as REVIEW_DATE
from REST_REVIEW r, MEMBER_PROFILE m
where m.member_id = r.member_id
and m.MEMBER_ID = (select member_id
                    from REST_REVIEW
                    group by member_id
                    order by COUNT(*) DESC LIMIT 1)
order by REVIEW_DATE, REVIEW_TEXT asc

