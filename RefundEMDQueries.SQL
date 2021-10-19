
SELECT  [nTenderCategory] , [nTenderEvalType]  FROM [dbo].[tblTender] WHERE [nProcurementID]= 12519

SELECT [nStatus],* FROM [dbo].[tblTender] WHERE [nTenderID]=77431

SELECT * FROM tblSupplierBidProfile WHERE [nProcurementID]=12478 AND [nSupplierUserID]=8514
SELECT * FROM tblSupplierBidProfile WHERE [nProcurementID]=12519 AND [nSupplierUserID]=8514
SELECT * FROM [dbo].[tblOnlinePayment] WHERE [nProcurementID]=12519 AND [nSupplierUserID]=8512

SELECT * FROM [dbo].[tblSupplier] WHERE [nUserID]=352
SELECT * FROM  tblSupplierBankDetails WHERE  [nSupplierUserID]=352

--UPDATE tblSupplierBankDetails SET [nSubUserId]=77 WHERE  [nSupplierUserID]=352
DELETE tblSupplierBankDetails WHERE  [nSupplierUserID]=352 AND [nAccountid]=4211

SELECT [nStatus],* FROM [dbo].[tblTender] WHERE [nTenderID]=77431
