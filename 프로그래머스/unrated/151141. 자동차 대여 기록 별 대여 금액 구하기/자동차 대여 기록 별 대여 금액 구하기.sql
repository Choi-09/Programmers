# -- 코드를 입력하세요
SELECT h.HISTORY_ID, case 
                when abs(DATEDIFF(h.END_DATE, h.START_DATE))+1>= 90 then round((c.DAILY_FEE * (1-0.15))*(DATEDIFF(h.END_DATE, h.START_DATE)+1))
                when abs(DATEDIFF(h.START_DATE, h.END_DATE))+1 >= 30 then round((c.DAILY_FEE *(1-0.08))*(DATEDIFF(h.END_DATE, h.START_DATE)+1))
                when abs(DATEDIFF(h.START_DATE, h.END_DATE))+1 >= 7 then round((c.DAILY_FEE *(1-0.05))*(DATEDIFF(h.END_DATE, h.START_DATE)+1))
                else round(c.DAILY_FEE * abs((DATEDIFF(h.END_DATE, h.START_DATE)+1)))
                end as FEE
from CAR_RENTAL_COMPANY_CAR c, CAR_RENTAL_COMPANY_RENTAL_HISTORY h, CAR_RENTAL_COMPANY_DISCOUNT_PLAN dp
where c.CAR_ID = h.CAR_ID
and c.CAR_TYPE = dp.CAR_TYPE
and dp.CAR_TYPE = '트럭'
group by h.HISTORY_ID
order by FEE desc, h.HISTORY_ID desc