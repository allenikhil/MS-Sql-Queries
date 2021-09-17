--DELETE  FROM tblTenderDocTemplates where [nTemplateID] IN (23462,23465)

SELECT * FROM [dbo].[tblTender] WHERE [nTenderID]=73933


SELECT * FROM tblCorrigendumDocTemplates WHERE [nProcurementID]=12033
  SELECT * FROM [dbo].[tblTenderDocTemplates] WHERE [nProcurementID]=12033
  
         DECLARE @sOldFileName NVARCHAR (200)
         DECLARE @sServerOldFileName NVARCHAR (200) 
         DECLARE @nOldFileSizeInBytes [bigint] 
         DECLARE @pin_nProcurementID [int] =12033
   IF ((SELECT COUNT(*) FROM tblCorrigendumDocTemplates WHERE [nProcurementID]=@pin_nProcurementID)>0)   
     BEGIN
       SELECT TOP 1  @sOldFileName=[sActualFileName],@sServerOldFileName=[sServerFileName],@nOldFileSizeInBytes=[nFileSizeInBytes]  FROM tblCorrigendumDocTemplates WHERE [nProcurementID]=@pin_nProcurementID AND [sActive]='Y' ORDER BY [nTemplateID] DESC
     END
     
     IF ((SELECT COUNT(*) FROM tblCorrigendumDocTemplates WHERE [nProcurementID]=@pin_nProcurementID)=0)   
     
     BEGIN
       SELECT TOP 1  @sOldFileName=[sActualFileName],@sServerOldFileName=[sServerFileName],@nOldFileSizeInBytes=[nFileSizeInBytes]  FROM [dbo].[tblTenderDocTemplates] WHERE [nProcurementID]=@pin_nProcurementID and sActive='Y'  ORDER BY sTemplateType DESC
     END
     
     SELECT @nOldFileSizeInBytes,@sOldFileName,@sServerOldFileName
     
     
     
  SELECT	CDC.nTemplateID,CDC.nProcurementID,nCorrigendumID, CDC.nUserID, CDC.sActualFileName, CDC.sServerFileName,CDC.sTemplateType, CDC.dtCreated,convert(VARCHAR,convert(DECIMAL(19,2),CDC.nFileSizeInBytes/ 1024.0 )) +' KB'AS nFileSizeInBytes ,CDC.nCreatedUserID,
	TDC.nTemplateID as nTTemplateID,TDC.sActualFileName as sTActualFileName, TDC.sServerFileName as sTServerFileName, TDC.dtCreated as dtTCreated, convert(VARCHAR,convert(DECIMAL(19,2),TDC.nFileSizeInBytes/ 1024.0 )) +' KB'  as nTFileSizeInBytes
	FROM	tblCorrigendumDocTemplates CDC
	INNER JOIN tblTenderDocTemplates TDC ON CDC.nProcurementID = TDC.nProcurementID AND CDC.sTemplateType = TDC.sTemplateType
	WHERE	CDC.nProcurementID = 12773 AND nCorrigendumID = 28913 AND CDC.sActive='Y' AND TDC.sActive='Y'  ORDER BY sTemplateType DESC
     
   