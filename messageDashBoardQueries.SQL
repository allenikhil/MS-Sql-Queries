SELECT * FROM [dbo].[tblLogin] WHERE [nUserID]=1270
SELECT * FROM [dbo].[tblLogin] WHERE [nUserID]=1007
SELECT * FROM [dbo].[tblLogin] WHERE [nUserId]=1253
SELECT * FROM [dbo].[tblLogin] WHERE [nUserID]=1008
SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]='se-bkpt'
--UPDATE [dbo].[tblLogin] SET [nFailCount]=0 WHERE [nUserID]=1008
--UPDATE [dbo].[tblLogin] SET [nStatusID]=103
-- WHERE [nUserID] IN (1008,1007,1006)

SELECT * FROM [dbo].[tblSupplier]

--UPDATE [dbo].[tblSupplier] SET [sEMail]='abc1@gmail.com' WHERE [nUserID]=8425
--UPDATE [dbo].[tblSupplier] SET [sContactNumber]=8987985645 WHERE [nUserID]=8424

SELECT * FROM tblDeptBottomLinks WHERE nDepartmentID=263

--INSERT INTO [dbo].[tblDeptBottomLinks] ([nDepartmentID], [nLinkID], [nSortOrder], [sActive], [nCreatedUserID], [nUpdatedUserID], [dtCreated], [dtLastModified])
--VALUES (263,183,0,'N',7,null,GETDATE(),GETDATE())

SELECT * FROM [dbo].[tblDepartment] WHERE [nDepartmentID]=263
SELECT * FROM [dbo].[tblDepartment] WHERE [nDepartmentID]=261
SELECT * FROM [dbo].[tblUser] WHERE [nDepartmentID]=263
SELECT * FROM [dbo].[tblUser] WHERE [nUserID]=1007


SELECT * FROM [dbo].[tblLogin] WHERE [nUserID]=1006
SELECT * FROM [dbo].[tblLogin] WHERE [nUserID]=1008
SELECT * FROM [dbo].[tblUser] WHERE [nUserID]=1008
SELECT * FROM [dbo].[tblUser] WHERE [nUserID]=1253

--UPDATE [dbo].[tblLogin] SET [sPassword]='15a214f8f0bea57aaf2f55d1ed1a468c', [dtLastLogin]=GETDATE(), [dtLastPwdChange]=GETDATE(), [sSubjectDN]='test1',sCertSerialNo='1748779d83',sCertIssuer='e-Mudhra Sub CA for Class 2 Gold Individual 2014', [dtCertExpiry]='2021/05/06 14:04:00.000', [sOwnerName]='test1 - 28458858',sCertRevoked='Y'
--WHERE [nUserID]=1008

--UPDATE [dbo].[tblUser] SET [nParentDepartmentID]=261 WHERE [nUserID]=1007
    
--    INSERT INTO [dbo].[tblBottomLinks] ([sLinkName], [sLinkUrl], [nPriority], [sToolTip], [sMenuName], [sBottomDisplay], [nSortOrder], [sActive], [nCreatedUserID], [nUpdatedUserID], [dtCreated], [dtLastModified])
--VALUES('Message Board',	'messageDashBoardBottomLink.html',	NULL,	'Message Board','',		'Y',	'0',	'Y',	7,	7,	'2019/12/31 16:25:55.013',	'2019/12/31 16:25:55.013')
--