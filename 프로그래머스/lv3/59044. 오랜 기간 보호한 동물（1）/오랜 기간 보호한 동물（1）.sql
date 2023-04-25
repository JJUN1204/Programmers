-- 코드를 입력하세요
SELECT NAME, DATETIME 
FROM
(select I.NAME	,I.DATETIME from ANIMAL_INS I,ANIMAL_OUTS O 
where I.ANIMAL_ID = O.ANIMAL_ID(+)
and O.DATETIME is null
order by I.DATETIME)
where rownum <= 3;