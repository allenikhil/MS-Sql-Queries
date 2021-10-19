EXEC [dbo].[SP_VTMS_Put_Tender_BidEval] 77476

SELECT TOP 1000 * FROM [dbo].[tblDeptErrorLog] ORDER BY 1 DESC

SELECT  TOP 1 * FROM [dbo].[tblDeptErrorLog] WHERE [dtCreated] BETWEEN GETDATE()-1 AND GETDATE();
ORDER BY 1 DESC

 SELECT  * FROM [dbo].[tblDeptErrorLog] WHERE [dtCreated] '2021/09/18 04:20:23.597' AND '2021/09/18 10:20:23.597';
SELECT  COUNT(*) FROM [dbo].[tblDeptErrorLog] WHERE [dtCreated] BETWEEN GETDATE()-1 AND GETDATE();

DECLARE @pin_ntenderid int=77425;
DECLARE @pin_nProcurementID int;

SELECT [dtBidSubmissionClosingDate],* FROM [dbo].[tblTender] WHERE [nTenderID]=@pin_ntenderid
SELECT @pin_nProcurementID=nProcurementID FROM [dbo].[tblTender] WHERE [nTenderID]=@pin_ntenderid

SELECT [dtBidEvaluationOpeningDate],* FROM [dbo].[tblTenderStages] WHERE [nProcurementID]=@pin_nProcurementID


UPDATE [dbo].[tblTenderStages] SET [dtBidEvaluationOpeningDate]=GETDATE() WHERE [nProcurementID]=@pin_nProcurementID 
AND [nStageID]=81313
UPDATE [dbo].[tblTender] SET [dtBidSubmissionClosingDate]=GETDATE() WHERE  [nTenderID]=@pin_ntenderid


 select count(*) from tblEncKeyDocuments WHERE nProcurementID=12201 and bSealed=0 AND 
 nStageID=(SELECT top 1 nStageID from tblTenderStages where nProcurementID=12201 order by nStageID asc) 

 SELECT * FROM tblEncKeyDocuments
 
 SELECT top 1 nStageID from tblTenderStages where nProcurementID=12320 order by nStageID ASC
 
 SELECT * FROM tblStageSelected where nProcurementID = 12320
 
 SELECT nPaymentMode,sPaymentName,nSortOrder 
 FROM tblMPaymentModes WHERE nPaymentType=103 AND sActive='Y' order by nsortorder ASC
 
-- UPDATE tblMPaymentModes SET [sActive]='N' WHERE [nPaymentMode]=103