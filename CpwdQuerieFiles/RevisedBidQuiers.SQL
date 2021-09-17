DECLARE  @pin_ntenderid Int=76160 ;
DECLARE  @pin_nProcurementID Int=(SELECT [nProcurementID] from tbltender where ntenderid=@pin_ntenderid);

SELECT [bRevisedBidSubmitted],[dtRevisedBidSubmissionDate],[dtBidSubmissionClosingDate],* from tbltender where ntenderid=@pin_ntenderid


--UPDATE [dbo].[tblTender] SET [dtBidSubmissionClosingDate]=GETDATE() where ntenderid=@pin_ntenderid
UPDATE [dbo].[tblTender] SET [dtRevisedBidSubmissionDate]=GETDATE(),[bRevisedBidSubmitted]=3 where ntenderid=@pin_ntenderid
--UPDATE [dbo].[tblTender] SET [bRevisedBidSubmitted]=3 where ntenderid=76155

SELECT bDecrypted FROM tblTender WHERE nProcurementID IN (SELECT [nProcurementID] from tbltender where ntenderid=@pin_ntenderid)
--tblTenderDecrypter

select [sSupplierTenderCost],sNegotiatedCost,sTemplateFilePath,sTemplateFileName,* FROM tblTenderCommBidW 
where nProcurementID IN (SELECT [nProcurementID] from tbltender where ntenderid=@pin_ntenderid)

select * from tblsupplierbid where nProcurementID IN (SELECT [nProcurementID] from tbltender where ntenderid=@pin_ntenderid)



select * from tbltender where bRevisedBidSubmitted=1
SELECT * FROM [dbo].[tblTenderCommBidW] where nProcurementID IN (SELECT [nProcurementID] from tbltender where ntenderid=@pin_ntenderid)
select * from tblsupplierbid where nProcurementID IN (SELECT [nProcurementID] from tbltender where ntenderid=@pin_ntenderid)

--FOR LIST OF revised bid tenders

SELECT	TD.sName, T.nProcurementID,nTenderID,sTenderNo,sNameOfWork,sTypeOfWork,nTenderType,nTenderCategory,nTenderEvalType,
		sCircle_Division,mEstimatedCost,dtTenderOpeningDate,dtTenderClosingDate,dtBidSubmissionClosingDate, DBO.getDependentStageEvalStatus(T.nProcurementID) AS nStatus,(SELECT nCurrencyType FROM tblTenderDetails WHERE nProcurementID = T.nProcurementID) AS nCurrencyType,
        CASE  WHEN dtBidSubmissionClosingDate < getdate() THEN 1 ELSE 0 END bDecrypt
FROM    tblTender T 
	    INNER JOIN  tblTenderDecrypter  TD ON T.nProcurementID = TD.nProcurementID
WHERE   T.bRevisedBidSubmitted=3 AND TD.bDecrypted=0 AND nUserID = 330 AND T.nstatus=105 
ORDER BY [nTenderID] DESC

--For Dept side Revised Template Upload Details by vendors

SELECT  [s].[sCompanyName],[sSupplierTenderCost],sNegotiatedCost, nSupplierUserID,ISNULL(sTemplateFileName,sTemplateFileName) AS sTemplateFileName, sTemplateFilePath
			FROM tblTenderCommBidW t INNER JOIN [dbo].[tblSupplier] s ON t.[nSupplierUserID]=[s].[nUserID]
			WHERE t.nProcurementID = @pin_nProcurementID
            
-- for vendor side For Revised bid icon
select * FROM tblTenderStages WHERE [nProcurementID]=12185
SELECT dbo.EnableRevisedBid(12185, 78844, 6443) AS bQualified