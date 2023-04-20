-- 코드를 입력하세요
SELECT to_number(to_char(DATETIME,'HH24')) as HOUR,
        count(ANIMAL_ID) as COUNT
from ANIMAL_OUTS
where to_char(DATETIME,'HH24') between 9 and 19
group by to_char(DATETIME,'HH24')
order by to_char(DATETIME,'HH24');