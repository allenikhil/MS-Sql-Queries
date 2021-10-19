SELECT * FROM [dbo].[tblTender] WHERE [nTenderID]=76148

select * FROM tblTenderPreQualifications WHERE [nProcurementID]=12228

--DELETE tblTenderPreQualifications WHERE [nProcurementID]=12213
SELECT * FROM tblTenderForms WHERE [nProcurementID]=12204
SELECT * FROM tblTenderForms WHERE nTenderFormID = 89234  AND  nProcurementID = 12204 AND nStageID = 79870     
--UPDATE tblTenderForms  SET [nStatus]=101 WHERE [nProcurementID]=12197
UPDATE tblTenderForms  SET  nStatus = 101,[dtLastModified]=GETDATE()   WHERE nTenderFormID = 89234  AND  nProcurementID = 12204 AND nStageID = 79870     

SELECT * FROM tblTenderRequiredPQDocs WHERE [nProcurementID]=12228
--DELETE tblTenderRequiredPQDocs WHERE [nProcurementID]=12212
select * FROM tblForms WHERE [nFormID] IN 
(SELECT [tblTenderForms].[nFormID] FROM tblTenderForms WHERE [nProcurementID]=12197)

SELECT COUNT(*) FROM [dbo].[tblTenderStages] WHERE [nProcurementID]=12197

 SELECT  [nDependentStageID] FROM tblTenderStages 
		WHERE  [nStageID] = 79893
        
SELECT * FROM tblTenderDocTemplates WHERE	nProcurementID = 12202

SELECT COUNT(CASE WHEN sTemplateType='Cost Template'  THEN 1 END)
FROM tblTenderDocTemplates WHERE	nProcurementID = 12202 AND nTenderStageID = 79868 AND nFormID = 89232 AND sActive='Y'