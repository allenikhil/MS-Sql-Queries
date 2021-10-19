SELECT * FROM [dbo].[tblTender] WHERE [nTenderID]=70005

SELECT * FROM tbllogin WHERE nuserid=1682

SELECT TOP 1000 * FROM [dbo].[tblDeptErrorLog] ORDER BY [dtCreated] DESC 

SELECT  TOP 1 * FROM [dbo].[tblDeptErrorLog] WHERE [dtCreated] BETWEEN GETDATE()-1 AND GETDATE();
ORDER BY 1 DESC

 SELECT  * FROM [dbo].[tblDeptErrorLog] WHERE [dtCreated] '2021/09/18 04:20:23.597' AND '2021/09/18 10:20:23.597';
SELECT  COUNT(*) FROM [dbo].[tblDeptErrorLog] WHERE [dtCreated] BETWEEN GETDATE()-1 AND GETDATE();


