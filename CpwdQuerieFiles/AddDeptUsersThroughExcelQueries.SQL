SELECT taul.nUserType,tal.nLinkID,tal.sLinkName,tal.sLinkUrl,tal.sToolTip,tal.nSortOrder,tal.sActive,[tal].[linkcode] FROM tblAdminLinks tal 
     LEFT OUTER JOIN tblAdminUserLinks taul ON tal.nLinkID = taul.nLinkID AND tal.sActive ='Y' 
            WHERE nUserType=101 AND [linkcode]='D'
            
            
            
SELECT * FROM [dbo].[tblAdminLinks]
SELECT * FROM [dbo].[tblAdminUserLinks]  WHERE [nLinkID]=1 

--INSERT INTO [dbo].[tblAdminLinks] ([sLinkName], [sLinkUrl], [nPriority], [sToolTip], [nSortOrder], [sActive], [nCreatedUserID], [nUpdatedUserID], [dtCreated], [dtLastModified], [linkcode])
--VALUES ('Add DepartmentUser Through Excel','addDeptUserFromExcel.html',0,'Add DepartMent Users Through Excel.',59,'Y',7,7,GETDATE(),GETDATE(),'D')
--
--INSERT INTO [dbo].[tblAdminUserLinks] ([nUserType], [nLinkID], [nSortOrder], [sActive], [nCreatedUserID], [nUpdatedUserID], [dtCreated], [dtLastModified])
--VALUES (101,72,0,'Y',8,null,GETDATE(),GETDATE())


SELECT * FROM [dbo].[tblDepartment] WHERE [sDepartmentName]='AE(C)-12' AND [nLevelID]=5

SELECT * FROM [dbo].[tblLogin] WHERE [sUserName] LIKE 'TestExcelDeptUser%'
SELECT * FROM [dbo].[tblUser] WHERE [nUserID] IN
(SELECT [dbo].[tblLogin].[nUserID] FROM [dbo].[tblLogin] WHERE [sUserName] LIKE 'TestExcelDeptUser%')


SELECT DISTINCT [sSubjectDN],[sCertSerialNo],[sCertIssuer],[dtCertExpiry],[nUserID] FROM [dbo].[tblLogin]


--UPDATE [dbo].[tblLogin] SET [sPKIEnabled]='Y' WHERE [nUserID]=10698

--UPDATE [dbo].[tblLogin] SET [sSubjectDN]='',[sCertSerialNo]='' WHERE [sCertSerialNo]='1748779d8d'

--UPDATE [dbo].[tblLogin] SET [sPassword]='15a214f8f0bea57aaf2f55d1ed1a468c' WHERE [nUserID]=9604

--UPDATE [dbo].[tblUser] SET [sAddress1]='',[sAddress2]='',[sFax]=0,[sDesignation]='',[nRoleID]=0 WHERE [nUserID]=10692

--UPDATE [dbo].[tblUser] SET [deptUserStatus]=0 WHERE [nUserID]=10758

SELECT * FROM [dbo].[tblUser] WHERE [nUserID]=3


SELECT * FROM [dbo].[tblLogin] WHERE [nUserID] IN (10632,10636,10758)
SELECT * FROM [dbo].[tblUser] WHERE [nUserID] IN (10632,10636,10758)
SELECT * FROM [dbo].[tblUser] WHERE [nDepartmentID] IN (491,492)

--DELETE FROM [dbo].[tblUser]  WHERE [nUserID] IN (10724,10725,10726,10760)
--DELETE  FROM [dbo].[tblLogin] WHERE [nUserID] IN (10724,10725,10726,10760)