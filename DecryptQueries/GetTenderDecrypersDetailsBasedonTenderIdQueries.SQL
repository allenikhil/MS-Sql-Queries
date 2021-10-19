DECLARE @pin_nprocurmentid [int];
SELECT @pin_nprocurmentid=[nProcurementID] FROM [dbo].[tblTender] WHERE [nTenderID]=77220

SELECT * FROM [dbo].[tblTenderDecrypter] WHERE [nProcurementID]=@pin_nprocurmentid

SELECT * FROM [dbo].[tblUser] WHERE [nUserID] IN ( SELECT [dbo].[tblTenderDecrypter].[nUserID] FROM [dbo].[tblTenderDecrypter] WHERE [nProcurementID]=@pin_nprocurmentid)

SELECT * FROM [dbo].tblLogin WHERE [nUserID] IN ( SELECT [dbo].[tblTenderDecrypter].[nUserID] FROM [dbo].[tblTenderDecrypter] WHERE [nProcurementID]=@pin_nprocurmentid)
