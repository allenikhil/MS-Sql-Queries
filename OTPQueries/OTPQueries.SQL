SELECT * FROM [dbo].[tblLogin] 

SELECT * FROM [dbo].[tblUser] 

SELECT * FROM [dbo].[tblSupplier]

SELECT TOP 100 * FROM [dbo].[tblOTPData] ORDER BY 1 DESC
SELECT * FROM [dbo].[tblOTPData] ORDER BY [dtCreated] DESC

SELECT TOP 1 * FROM [dbo].[tblOTPData] WHERE [sMobileNumber]='9418026003' ORDER BY [dtLastModified] DESC
SELECT TOP 1 * FROM tblotpdata WHERE semail='abijit.1981@gov.in' ORDER BY [dtLastModified] DESC

SELECT * FROM tblintegrationfeatures


SELECT * FROM [dbo].[tblSMSAlerts] ORDER BY [dtCreated] DESC

SELECT TOP 1000 * FROM [dbo].[tblDeptErrorLog] ORDER BY [dtCreated] DESC