-- 코드를 입력하세요
SELECT to_char(SALES_DATE, 'YYYY') as YEAR
,to_number(to_char(SALES_DATE,'MM')) as MONTH
,GENDER
,count(distinct U.USER_ID) as USERS
from USER_INFO U, ONLINE_SALE S
where U.USER_ID = S.USER_ID
and GENDER is not null
group by to_char(S.SALES_DATE,'YYYY')
,to_number(to_char(S.SALES_DATE,'MM'))
,U.GENDER
order by to_char(S.SALES_DATE,'YYYY')
,to_number(to_char(S.SALES_DATE,'MM'))
,U.GENDER