-- 코드를 입력하세요
SELECT sum(count(USER_ID)) as USERS
from USER_INFO
where age is null
group by USER_ID;