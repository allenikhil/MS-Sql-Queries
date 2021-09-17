SELECT TOP 100 * FROM [dbo].[tblDeptErrorLog] ORDER BY [dtCreated] DESC
SELECT * FROM [dbo].[tblTender] WHERE [nTenderID]=77221

SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]='testuser8'


select * FROM tblSupplierPreQualifications WHERE [nProcurementID]=12304 AND nsupplieruserid=6450

SELECT * FROM tblSupplierBidProfile WHERE [nProcurementID]=278

--delete all inserted records if error get when click on edit icon at bidder side
--DELETE tblSupplierPreQualifications WHERE [nProcurementID]=12304 AND nsupplieruserid=6450

