-- 코드를 입력하세요
SELECT BOOK_ID,	AUTHOR_NAME,	to_char(PUBLISHED_DATE, 'YYYY-MM-DD') as PUBLISHED_DATE
from BOOK B, AUTHOR A
where B.AUTHOR_ID=A.AUTHOR_ID	
and B.CATEGORY = '경제'
order by B.PUBLISHED_DATE;