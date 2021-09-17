EXEC [dbo].[SP_VTMS_Put_Tender_BidEval] 77223

SELECT top 100* FROM [dbo].[tblDeptErrorLog] ORDER BY 1 DESC



SELECT * FROM [dbo].[tblTender] WHERE [nTenderID]=25181

SELECT * FROM [dbo].[tblTenderStages] WHERE [nProcurementID]=283


--UPDATE [dbo].[tblTender] SET [dtBidSubmissionClosingDate]=GETDATE() WHERE  [nTenderID]=25181
--UPDATE [dbo].[tblTenderStages] SET [dtBidEvaluationOpeningDate]=GETDATE() WHERE [nProcurementID]=283 AND [nStageID]=25274


 select count(*) from tblEncKeyDocuments WHERE nProcurementID=12201 and bSealed=0 AND 
 nStageID=(SELECT top 1 nStageID from tblTenderStages where nProcurementID=12201 order by nStageID asc) 

 SELECT * from tblEncKeyDocuments