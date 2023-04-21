-- 코드를 입력하세요
SELECT B.CATEGORY , sum(SALES) as TOTAL_SALES
from BOOK B, BOOK_SALES S
where B.BOOK_ID	= S.BOOK_ID	
and to_char(S.SALES_DATE, 'YYYY-MM') = '2022-01'
group by B.CATEGORY
order by B.CATEGORY;