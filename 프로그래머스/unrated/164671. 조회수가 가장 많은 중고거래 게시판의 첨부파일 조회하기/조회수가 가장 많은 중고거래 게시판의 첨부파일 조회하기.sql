-- 코드를 입력하세요
SELECT '/home/grep/src/' || B.BOARD_ID || '/' || B.FILE_ID || B.FILE_NAME || B.FILE_EXT as FILE_PATH
from USED_GOODS_BOARD A, USED_GOODS_FILE B
where A.BOARD_ID = B.BOARD_ID
and A.VIEWS =(select max(A.VIEWS) from USED_GOODS_BOARD A)
order by B.FILE_ID desc;
