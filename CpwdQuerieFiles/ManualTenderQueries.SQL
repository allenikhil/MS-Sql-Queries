SELECT nBidOffline,nStatus,* FROM [dbo].[tblTender]  WHERE [nBidOffline]=1

SELECT * FROM [dbo].[tblTenderDetails]

--ALTER TABLE [dbo].[tblTender] ALTER COLUMN  nBidOffline [bit];
--DELETE  FROM [dbo].[tblTender] WHERE [nProcurementID]=10792
--DELETE FROM [dbo].[tblTenderDocuments] WHERE [nProcurementID]=10792
--DELETE FROM [dbo].[tblTenderDetails] WHERE [nProcurementID]=10792

--UPDATE [dbo].[tblTender] SET nStatus=105 WHERE [nStatus]=101

SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]='testuser2'

SELECT * FROM [dbo].[tblSupplier] WHERE [nUserID]=352

--UPDATE [dbo].[tblSupplier] SET [dRegistrationValid]=GETDATE()+100 WHERE [nUserID]=4409

SELECT * FROM [dbo].[tblTenderDocuments] ORDER BY [nProcurementID] DESC

SELECT * FROM [dbo].[tblDeptErrorLog] ORDER BY [dtCreated] DESC