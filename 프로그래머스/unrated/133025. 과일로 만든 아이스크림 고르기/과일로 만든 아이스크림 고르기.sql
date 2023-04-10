-- 코드를 입력하세요
SELECT H.flavor
from first_half H, icecream_info I
where H.flavor = I.flavor
and H.total_order > 3000
and INGREDIENT_TYPE = 'fruit_based';