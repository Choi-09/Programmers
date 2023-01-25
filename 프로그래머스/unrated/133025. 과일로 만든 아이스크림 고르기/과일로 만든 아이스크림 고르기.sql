-- 상반기 주문 정보를 담은 FIRST_HALF
-- 아이스크림 성분에 대한 정보를 담은 ICECREAM_INFO
SELECT b.flavor from first_half as a, icecream_info as b
where a.flavor = b.flavor and a.total_order > 3000 and b.INGREDIENT_TYPE = 'fruit_based'
order by a.total_order desc