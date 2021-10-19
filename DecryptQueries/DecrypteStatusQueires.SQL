SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]='ae-vupadhi'
SELECT * FROM [dbo].[tblLogin] WHERE [nUserID]=9604

SELECT * FROM [dbo].[tblUser] WHERE [nUserID]=329
SELECT * FROM [dbo].[tblUser] WHERE [nUserID]=9604


SELECT [bDecrypted],* FROM [dbo].[tblTender] WHERE [nTenderID]=77238
SELECT [bDecrypted],* FROM [dbo].[tblTenderDecrypter] WHERE [nProcurementID]=12508
SELECT * FROM [dbo].[tblTenderstages] WHERE [nProcurementID]=12508
SELECT * FROM tblDepartmentLog where nCreatedUserID= 329 AND [nDepartmentID]=492 and nTenderID=77425

DECLARE @pin_nuserid [int]=329;
DECLARE @pin_sCircle_Division [int] =492;
SELECT	TOP 10 TD.sName, T.nProcurementID,nTenderID,sTenderNo,sNameOfWork,sTypeOfWork,nTenderType,nTenderCategory,nTenderEvalType,
		sCircle_Division,mEstimatedCost,dtTenderOpeningDate,dtTenderClosingDate,dtBidSubmissionClosingDate, DBO.getDependentStageEvalStatus(T.nProcurementID) AS nStatus,(SELECT nCurrencyType FROM tblTenderDetails WHERE nProcurementID = T.nProcurementID) AS nCurrencyType,
        CASE  WHEN dtBidSubmissionClosingDate < getdate() THEN 1 ELSE 0 END bDecrypt,
        (SELECT bDecrypted FROM [dbo].[tblTenderDecrypter] WHERE [nProcurementID]=TD.nProcurementID AND nUserID = [T].[nCreatedBy] ) AS bo1status,
        (SELECT bDecrypted FROM [dbo].[tblTenderDecrypter] WHERE [nProcurementID]=TD.nProcurementID AND nUserID !=  [T].[nCreatedBy] ) AS bo2status
FROM    tblTender T 
	    INNER JOIN  tblTenderDecrypter  TD ON T.nProcurementID = TD.nProcurementID
WHERE  T.bDecrypted=0 AND TD.bDecrypted=0 AND ISNULL([bDecryptApplicable],0) =0 AND nUserID = @pin_nuserid AND T.nstatus=105 
AND [sCircle_Division]=@pin_sCircle_Division and dtBidSubmissionClosingDate < getdate()
ORDER BY [nTenderID] DESC