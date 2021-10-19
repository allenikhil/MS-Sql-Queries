SELECT * FROM [dbo].[tblLogin] WHERE [sUserName] IN ('testuser333','testuser444','testuser555')

SELECT [sCompanyName],* FROM [dbo].[tblSupplier] WHERE [nUserID] IN (
8511,
8512,
8514
)

SELECT * FROM [dbo].[tblSupplierBidProfile] WHERE [nProcurementID]=12190
SELECT * FROM tblTenderCommBidW WHERE [nProcurementID]=12185

SELECT * FROM [dbo].[tblTender] WHERE [nTenderID]=75111

SELECT * FROM [dbo].[tblTenderStages] WHERE [nProcurementID]=12927

--UPDATE [dbo].[tblTenderStages] SET [nStatus]=102 WHERE [nProcurementID]=12927 AND [nStageID]=80312

SELECT TOP 100 * FROM [dbo].[tblDeptErrorLog] ORDER BY [dtCreated] DESC