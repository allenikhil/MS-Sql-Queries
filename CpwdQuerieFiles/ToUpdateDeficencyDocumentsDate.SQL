SELECT * FROM [dbo].[tblTender] WHERE [nTenderID]=75665

SELECT * FROM [dbo].[tblShortfallDocuments] WHERE [nProcurementID]=12775
SELECT * FROM [dbo].[tblTenderStages] WHERE [nProcurementID]=12726 
SELECT [dtShortfallDate],* FROM [dbo].[tblTenderStages] WHERE [nProcurementID]=12775 AND [nStageID]=79962

--UPDATE [dbo].[tblShortfallDocuments] SET [dtReqSubmissionDate]=GETDATE() WHERE [nProcurementID]=11746
--UPDATE [dbo].[tblTenderStages] SET [dtShortfallDate]=GETDATE()+1  WHERE [nProcurementID]=12726 AND [nStageID]=79962