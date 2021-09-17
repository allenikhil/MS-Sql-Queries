EXEC [dbo].[SP_VTMS_Put_Tender_BidEval] 77181 


DECLARE @nTenderId int=77181

SELECT [dtBidSubmissionClosingDate],* FROM [dbo].[tblTender] WHERE ntenderid=@nTenderId
SELECT * FROM tbltenderstages  where nProcurementID IN 
(select nProcurementID from tbltender where ntenderid = @nTenderId)

--put all stages in evalution
update tbltender set dtBidSubmissionClosingDate =getdate() where ntenderid = @nTenderId  
update tbltenderstages set dtBidEvaluationOpeningDate =getdate() where nProcurementID IN 
(select nProcurementID from tbltender where ntenderid = @nTenderId)  

--put one stage in evalution
update tbltender set dtBidSubmissionClosingDate =getdate() where ntenderid = @nTenderId  
update tbltenderstages set dtBidEvaluationOpeningDate =getdate() where nProcurementID IN 
(select nProcurementID from tbltender where ntenderid = @nTenderId) AND [nStageID]=


SELECT top 100* FROM [dbo].[tblDeptErrorLog] ORDER BY 1 desc
SELECT * FROM [dbo].[tblTender] WHERE [nTenderID]=70009



--UPDATE [dbo].[tblTender] SET [dtBidSubmissionClosingDate]='2021/08/26 20:43:05.377' WHERE  [nTenderID]=76119

 select count(*) from tblEncKeyDocuments WHERE nProcurementID=12201 and bSealed=0 AND 
 nStageID=(SELECT top 1 nStageID from tblTenderStages where nProcurementID=12201 order by nStageID asc) 


 SELECT * from tblEncKeyDocuments