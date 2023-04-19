-- 코드를 입력하세요
select NAME
from (select * from ANIMAL_INS order by DATETIME)
where ROWNUM = 1;