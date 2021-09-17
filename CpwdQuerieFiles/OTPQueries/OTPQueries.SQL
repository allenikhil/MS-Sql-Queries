SELECT * FROM [dbo].[tblLogin] 

SELECT * FROM [dbo].[tblUser] 

SELECT * FROM [dbo].[tblSupplier]

SELECT TOP 100 * FROM [dbo].[tblOTPData] ORDER BY 1 DESC
SELECT * FROM [dbo].[tblOTPData] ORDER BY [dtCreated] DESC

SELECT * FROM [dbo].[tblOTPData] WHERE [sMobileNumber]='9440683072' ORDER BY [dtCreated] DESC

SELECT * FROM tblotpdata WHERE semail='eccd2.chd@cpwd.gov.in'

SELECT * FROM [dbo].[tblSMSAlerts] ORDER BY [dtCreated] DESC

SELECT TOP 100 * FROM [dbo].[tblDeptErrorLog] ORDER BY [dtCreated] DESC