SELECT TOP 100 * FROM [dbo].[tblSMSAlerts] ORDER BY [dtCreated] DESC
SELECT TOP 100 * FROM [dbo].[tblEmailAlerts] ORDER BY [dtCreated] DESC

SELECT * FROM [dbo].[tblSMSAlerts] WHERE [nMobileNumber]='9440683072'
SELECT * FROM [dbo].[tblSMSAlerts] WHERE [nCreatedUserID]=1252


SELECT * FROM [dbo].[tblEmailAlerts] WHERE [sEmailID]='chandrakala@vupadhi.com'
SELECT * FROM [dbo].[tblEmailAlerts] WHERE [nCreatedUserID]=1252

--DELETE [dbo].[tblSMSAlerts] WHERE [nID]=111112






