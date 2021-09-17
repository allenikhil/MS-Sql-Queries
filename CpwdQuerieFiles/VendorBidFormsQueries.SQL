SELECT * FROM [dbo].[tblTender] WHERE [nTenderID] IN (78051)
SELECT * FROM [dbo].[tblTenderForms] WHERE [nProcurementID] IN (13166)
SELECT * FROM tblSupplierbidforms  WHERE [nProcurementID] IN (13166)
SELECT * FROM [dbo].[tblForms] WHERE [nFormID] IN (1181) 
    SELECT * FROM tblTenderStages  WHERE [nProcurementID] IN (13166)
     
    
    

DECLARE @pin_nProcurementID [int]=13166
DECLARE @nSupplierID [int]=4409
DECLARE @pin_nScheduleID [int] =1
SELECT  TTF.nStageID,nTenderFormID, TG.sStageName,   TF.sIsPriceForm, ttf.nProcurementID,  TTF.nFormID,TF.sFormPath,  
	   TF.sViewResultsPath,  SB.nFilledBy, SB.nAssignedTo, SRequiredDocumentDescription, TTF.bSupportingDocRequired,  TTF.bSupportingDocEncrypted,
	   sEvalConsoleFormPath, nFormPriority, nFormMode, bBidSubmissionMandatory, bSealed, bScraped,TTF.nStatus, bEvaluated, TF.sFormName, TF.nFormType,  
	   TF.nCriteriaExists, TF.sCriteriaPath, DBO.GetItemFormatXFilledStatus(@pin_nProcurementID,@nSupplierID,@pin_nScheduleID,TTF.nFormID) AS nFormBidStatus ,TF.bDynamic,[TG].[nWeightage]
	   FROM  tblTenderForms TTF  
	   INNER JOIN tblSupplierbidforms SB ON SB.nFormID=TTF.nFormID AND SB.nStageID=TTF.nStageID  
	   INNER JOIN tblForms TF ON TTF.nFormID=TF.nFormID   
	   INNER JOIN tblTenderStages TG on TG.nStageID = TTF.nStageID
	   AND TTF.nScheduleID = SB.nScheduleID     
	   WHERE  TTF.nProcurementID = @pin_nProcurementID  
	--   AND   TTF.nStageID = @pin_nStageID   
	   AND SB.nSupplierUserID = @nSupplierID AND sFormPath IS NOT NULL
	   ORDER by nStageID, nFormID ASC