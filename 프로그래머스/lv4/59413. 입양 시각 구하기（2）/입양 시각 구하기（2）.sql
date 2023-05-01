-- 코드를 입력하세요
SELECT B.HOUR,
NVL(A.COUNT,0)
from(
    select to_number(to_char(DATETIME,'HH24')) as HOUR
    ,count(*) as COUNT
    from ANIMAL_OUTS
    group by to_char(DATETIME, 'HH24')
) A
,(
    select level -1 as hour
    from DUAL
    connect by level < 25
) B
where A.HOUR (+) = B.HOUR
order by HOUR;