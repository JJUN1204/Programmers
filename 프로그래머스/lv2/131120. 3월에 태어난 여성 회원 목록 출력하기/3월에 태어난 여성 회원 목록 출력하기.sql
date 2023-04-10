-- 코드를 입력하세요
select member_id,member_name, gender, to_char(date_of_birth, 'YYYY-MM-DD') date_of_birth
from MEMBER_PROFILE
where to_char(date_of_birth,'mm') = '03'
and tlno is not null
and gender = 'W'
order by member_id;