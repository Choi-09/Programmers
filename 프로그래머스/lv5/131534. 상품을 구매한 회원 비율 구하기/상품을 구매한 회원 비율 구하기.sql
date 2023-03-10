-- 코드를 입력하세요
SELECT YEAR(SALES_DATE) aS YEAR, MONTH(SALES_DATE) AS MONTH,
COUNT(DISTINCT O.USER_ID) AS PUCHASED_USERS,
ROUND((COUNT(DISTINCT O.USER_ID) / (SELECT COUNT(*)
                                        FROM USER_INFO
                                        WHERE YEAR(JOINED) = 2021
                                    )), 1) AS PUCHASED_RATIO

FROM ONLINE_SALE AS O, USER_INFO AS U
WHERE O.USER_ID = U.USER_ID
AND YEAR(U.JOINED) = 2021
GROUP BY YEAR(SALES_DATE), MONTH(SALES_DATE)
ORDER BY YEAR, MONTH