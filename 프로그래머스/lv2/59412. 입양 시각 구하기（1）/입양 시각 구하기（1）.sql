-- 코드를 입력하세요
SELECT HOUR(datetime) as HOUR, count(distinct animal_id) AS COUNT from animal_outs group by HOUR having (HOUR >= 9 AND HOUR <= 19) ORDER BY HOUR