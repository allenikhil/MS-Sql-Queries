SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]='se-vupadhi'
SELECT * FROM [dbo].[tblReviewSupplierPrivilege]

SELECT * FROM [dbo].[tblReviewSupplierPrivilege]
WHERE [nParentDepartmentID] =40 AND [nDepartmentID]=41 AND [nUserID]=331

--DELETE tblReviewSupplierPrivilege WHERE  [nUserID]=1253

--ALTER TABLE tblReviewSupplierPrivilege ADD nTenderID [int];


SELECT [nParentDepartmentID],[nDepartmentID] ,[L].[nUserID],[sUserName],[nOfficeID],[sDesignation],dbo.[GetDepartmentName] ([nParentDepartmentID]) AS sDepartmentName,
(SELECT sactive FROM [dbo].[tblReviewSupplierPrivilege] RP WHERE [nUserID]=[L].[nUserID] ) AS reviewUser
FROM [dbo].[tblUser] U INNER JOIN [dbo].[tblLogin] L ON U.[nUserID] =[L].[nUserID] WHERE [nStatusID]=103 AND [nUserType]=103  AND [sUserName]='se-vupadhi'

SELECT (SELECT sactive FROM [dbo].[tblReviewSupplierPrivilege] RP WHERE [nTenderID]=[t].[nTenderID] ) AS reviewUser,[t].[nTenderID]
from [dbo].[tblTender] t 
 WHERE [t].[nTenderID]=77217