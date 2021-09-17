SELECT * FROM [dbo].[tblLogin] WHERE [sUserName] ='testuser2'
SELECT * FROM [dbo].[tblUser] WHERE nUserId=4409
SELECT * FROM [dbo].[tblSupplier] WHERE nUserId=4409

--UPDATE [dbo].[tblSupplier] SET [sMobileNo]=7013601641 WHERE nUserId=4409

SELECT * FROM [dbo].[tblLogin] WHERE [nUserID]=352
SELECT * FROM [dbo].[tblLogin] WHERE [nUserType]=103

--UPDATE [dbo].[tblLogin] SET [sPKIEnabled]='Y',[sCertLogin]='Y' WHERE [nUserID]=1253

SELECT * FROM [dbo].[tblDeptErrorLog] ORDER BY [dtCreated] DESC


SELECT	nTenderDocID, sName, sPath, sDescription,sSignData,sTSSignature, nFileSizeInBytes, dtUploadedOn,sPublicKey,sCertDetails
		FROM	tblTenderDocuments TD
		INNER JOIN tblTender T ON TD.nProcurementID = T.nProcurementID
		WHERE	TD.nProcurementID = 10351 AND TD.sActive = 'Y' AND dtTenderOpeningDate<=GETDATE()
        
        
        
       SELECT TD.nProcurementID, TD.nUserID, TD.sName, TU.sUserName, bDecrypted,TD.dtCertExpiry, TD.sPublicKey, TD.sCertSerialNo,TD.sSubjectDN , TD.sCertIssuer FROM tblTenderDecrypter TD
	INNER JOIN tblLogin TU ON TU.nUserID =  TD.nUserID
	WHERE	nProcurementID = @pin_nProcurementID AND TD.nUserID = @pin_nUserID
    
    

    
 SELECT  TTF.nStageID,nTenderFormID, TG.sStageName,ttf.nProcurementID, TF.sIsPriceForm, TTF.nFormID, TF.sFormPath, TF.sViewResultsPath, TS.nFormID 'FormId1', SB.nFilledBy, SB.nAssignedTo, dbo.GetUserName(nAssignedTo) as sAssignedUserName, dbo.GetUserName(nFilledBy) as sFilledByUserName,  
		  SRequiredDocumentDescription, TTF.bSupportingDocRequired, TTF.bSupportingDocEncrypted, sEvalConsoleFormPath, nFormPriority, nFormMode, bBidSubmissionMandatory,  
		  bSealed, bScraped, TTF.nStatus, bEvaluated, TF.sFormName, TF.nFormType, TF.nCriteriaExists, TF.sCriteriaPath, SB.nFormBidStatus ,TF.bDynamic
		  FROM  tblTenderForms TTF  
		  INNER JOIN tblSupplierbidforms SB ON SB.nFormID=TTF.nFormID AND SB.nStageID=TTF.nStageID  
		  INNER JOIN tblForms TF ON TTF.nFormID=TF.nFormID     
		  INNER JOIN tblTenderStages TG on tg.nStageID = TTF.nStageID  
		  LEFT OUTER JOIN  tblTenderSupplierDocuments TS on TS.nProcurementID=TTF.nProcurementID AND TS.nStageID=TTF.nStageID AND TS.nFormID=TTF.nFormID AND SB.nSupplierUserID = TS.nSupplierUserID  
		  WHERE  TTF.nProcurementID = 10342   AND sFormPath IS NOT NULL
