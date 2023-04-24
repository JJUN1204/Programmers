-- 코드를 입력하세요
SELECT to_number(to_char(START_DATE, 'MM')) as MONTH , CAR_ID ,
count(HISTORY_ID) as RECORDS
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
where CAR_ID IN (select  CAR_ID from CAR_RENTAL_COMPANY_RENTAL_HISTORY 
                 where to_char(START_DATE, 'YYYY-MM') between '2022-08' and '2022-10'
                group by  CAR_ID 
                having count(CAR_ID) >=5)
                
and to_char(START_DATE, 'YYYY-MM') between '2022-08' and '2022-10'

group by to_char(START_DATE, 'MM'), CAR_ID
having count(CAR_ID) is not null
order by MONTH , CAR_ID desc;