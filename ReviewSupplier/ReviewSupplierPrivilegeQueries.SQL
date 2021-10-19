SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]='se-vupadhi'
SELECT * FROM [dbo].[tblReviewSupplierPrivilege]

SELECT * FROM [dbo].[tblTender] WHERE [nTenderID]=77312
SELECT * FROM [dbo].[tblTenderStages] WHERE [nProcurementID]=12356

SELECT * FROM [dbo].[tblReviewSupplierPrivilege]
WHERE [nParentDepartmentID] =40 AND [nDepartmentID]=41 AND [nUserID]=331

--DELETE tblReviewSupplierPrivilege WHERE  [nUserID]=1253

SELECT * FROM [dbo].[tblReviewSupplierPrivilegeDocuments] WHERE [nProcurementID]=12321
 
DELETE [dbo].[tblReviewSupplierPrivilegeDocuments] WHERE  [nProcurementID]=12321
--ALTER TABLE tblReviewSupplierPrivilege ADD nTenderID [int];


SELECT [nParentDepartmentID],[nDepartmentID] ,[L].[nUserID],[sUserName],[nOfficeID],[sDesignation],dbo.[GetDepartmentName] ([nParentDepartmentID]) AS sDepartmentName,
(SELECT sactive FROM [dbo].[tblReviewSupplierPrivilege] RP WHERE [nUserID]=[L].[nUserID] ) AS reviewUser
FROM [dbo].[tblUser] U INNER JOIN [dbo].[tblLogin] L ON U.[nUserID] =[L].[nUserID] WHERE [nStatusID]=103 AND [nUserType]=103  AND [sUserName]='se-vupadhi'

SELECT (SELECT sactive FROM [dbo].[tblReviewSupplierPrivilege] RP WHERE [nTenderID]=[t].[nTenderID] ) AS reviewUser,[t].[nTenderID]
from [dbo].[tblTender] t 
 WHERE [t].[nTenderID]=77217
 
 select COUNT(nUserID) AS nUserIDCount  from (SELECT nUserID  FROM tblReviewSupplierPrivilege WHERE nUserID = 11767 AND [sActive]='Y'
union select nUserID AS nUserIDCount  FROM tblReviewSupplierPrivilege s WHERE[nTenderID] =77229  AND [sActive]='Y') Temp

SELECT  COUNT([nSupplierUserID]) AS nUserIDCount FROM tblReviewSupplierPrivilegeDocuments WHERE [nProcurementID]=77229


 SELECT [sReviewSupplierDocName],[sReviewSupplierComments],[sReviewSupplierDocPath],* FROM tblReviewSupplierPrivilegeDocuments WHERE [nProcurementID]=12345
 


SELECT	ISNULL(nEmdacceptreject,0) AS nEmdacceptreject,* FROM	tblSupplierBid B WHERE		B.nProcurementID =12345 
                 
   UPDATE tblSupplierBid SET [bEMDReceived]=1 WHERE nProcurementID =12345 AND [nSupplierUserID]=8511
                 
 --INSERT INTO [dbo].[tblReviewSupplierPrivilegeDocuments] ([nSupplierUserID], [nProcurementID], [sReviewSupplierDocName], [sReviewSupplierComments], [nReviewSupplierDocSize], [nCreatedUserID], [nUpdatedUserID], [dtCreated], [dtLastModified], [sReviewSupplierDocPath])
-- VALUES (8511,12345,'nikil.docx','kk',2559318,9599,9599,GETDATE(),GETDATE(),'\appdata\TenderDocuments\ReviewSupplierDocuments\12330\nikil.docx')