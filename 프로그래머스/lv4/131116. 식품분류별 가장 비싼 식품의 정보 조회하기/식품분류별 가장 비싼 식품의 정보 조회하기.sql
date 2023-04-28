-- 코드를 입력하세요
SELECT CATEGORY, max(PRICE) as MAX_PRICE ,PRODUCT_NAME
from FOOD_PRODUCT 
where (CATEGORY, PRICE) in (SELECT CATEGORY, max(PRICE) from FOOD_PRODUCT
group by CATEGORY) 
group by CATEGORY ,PRODUCT_NAME
having CATEGORY ='과자' or CATEGORY ='국' or CATEGORY ='김치' or CATEGORY ='식용유' 
order by max(price) desc;
