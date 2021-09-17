SELECT [nTenderType],* FROM [dbo].[tblTender] WHERE [nTenderID]=75996
SELECT nTenderType,* FROM [dbo].[tblTender] WHERE [nTenderID] IN (75946,75950,75952)

SELECT [nWeightage],* FROM [dbo].[tblTenderStages]  WHERE [nProcurementID] IN (13056,13060) 
SELECT * FROM tblTenderRequiredPQDocs WHERE [nProcurementID] IN (13056,13060) 

SELECT * FROM [dbo].[tblEvaluationTypes] WHERE nTenderCategoryID=101

SELECT [nAwardCriteria],* FROM [dbo].[tblTenderDetails] WHERE [nProcurementID] IN (13056) 

select * FROM tblTenderRequiredPQDocsScore WHERE [nProcurementID]=13056

--put in qcbs format
--UPDATE [dbo].[tblTenderDetails] SET [nAwardCriteria]=102 WHERE [nProcurementID] IN (13106) 
--back to normal tender
--UPDATE [dbo].[tblTenderDetails] SET [nAwardCriteria]=101 WHERE [nProcurementID] IN (13106) 



SELECT '0' as nDepartmentID,sName ,nEvalTypeID ,nTenderCategoryID,[nID] FROM  tblEvaluationTypes et
        WHERE et.nTenderCategoryID = 101 order by nSortOrder ASC
        


SELECT TOP 100 * FROM [dbo].[tblDeptErrorLog] ORDER BY [dtCreated] DESC

SELECT TOP 100 * FROM tbldept

