select * from(select [nUserID], ROW_NUMBER() 
over(order by [nUserID] DESC)  AS SNo
from tblLogin) e
where SNo=10;


SELECT TOP 1 * FROM (
select TOP 3 * FROM tblLogin ORDER BY [nUserID] DESC) e ORDER BY [nUserID] 
