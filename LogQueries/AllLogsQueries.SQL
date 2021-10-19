SELECT TOP 100 * FROM [dbo].[tblDeptErrorLog] ORDER BY [dtCreated] DESC
SELECT TOP 100 * FROM [dbo].[tblDepartmentLog] ORDER BY [dtCreated] DESC
SELECT TOP 100 * FROM [dbo].[tblSupplierLog] ORDER BY [dtCreated] DESC
SELECT TOP 100 * FROM [dbo].[tblLogingHistory] ORDER BY [dtLoginDatetime] DESC



SELECT TOP 100 * FROM [dbo].[tblDepartmentLog] ORDER BY [dtCreated] DESC

SELECT * FROM [dbo].[tblSupplierLog] WHERE  [dtCreated] > '2021/09/22 10:05:54.330' ORDER BY dtCreated DESC

SELECT TOP 100 * FROM [dbo].[tblSupplierLog] ORDER BY [dtCreated] DESC

SELECT TOP 1000 * FROM [dbo].[tblLogingHistory] ORDER BY [dtCreated] DESC


SELECT * FROM [dbo].[tblLogingHistory] WHERE  [dtLoginDatetime] > '2021/09/22 11:18:58.290' ORDER BY dtLoginDatetime DESC
SELECT COUNT(*) FROM [dbo].[tblLogingHistory] WHERE  [dtLoginDatetime] > '2021/09/22 11:18:58.290'