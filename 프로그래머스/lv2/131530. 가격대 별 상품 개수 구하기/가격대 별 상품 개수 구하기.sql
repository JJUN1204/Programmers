-- 코드를 입력하세요
SELECT trunc(PRICE, -4) as PRICE_GROUP, 
count(TRUNC(PRICE,-4))
from PRODUCT
group by TRUNC(PRICE,-4)
order by TRUNC(PRICE,-4);