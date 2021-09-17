
SELECT * FROM [dbo].[tblTender] WHERE [nTenderID]=77206

SELECT nStageID,[nStatus],[bBidEvaluated],* FROM [dbo].[tblTenderStages] WHERE [nProcurementID]=12289

--UPDATE [dbo].[tblTenderStages] SET [dtBidEvaluationOpeningDate]=NULL  WHERE [nStageID]=80971
--UPDATE [dbo].[tblTenderStages] SET [nStatus]=102,[bBidEvaluated] =0,[bBidOpened]=0,[dtBidOpened]=null WHERE [nStageID] =80971