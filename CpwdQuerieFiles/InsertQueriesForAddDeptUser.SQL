SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]='Testdeptuser'

INSERT INTO [dbo].[tblLogin] ([sUserName], [sPassword], [nUserType], [nFailCount], [bResetPassword], [dtLastPwdChange], [dtLastLogin], [nStatusID], [nParentUserID], [sPKIEnabled], [sSubjectDN], [sCertSerialNo], [sCertLogin], [sCertIssuer], [dtDisclaimerDate], [sCertRevoked], [dtCertExpiry], [dtCertActive], [sThumbPrint], [sOwnerName], [nSortOrder], [sActive], [nCreatedUserID], [nUpdatedUserID], [dtCreated], [dtLastModified], [sApproverName], [UserId], [nOTPCount], [bOTPblockStatus], [dtOTPDate], [enableRegDetails], [randomId], [loggedInStatus])
 VALUEs ('TESTDEPT12',	'15a214f8f0bea57aaf2f55d1ed1a468c',	103	,0,	0,	null,	null,	103,	null,	'Y',	'test2',	'1748779d85',	'Y',	null,	null,	'N',	null,	null,	null,	null,	0,	'Y',	7,	null	,'2020/08/26 16:41:27.470',	'2020/08/26 16:41:27.470',	null,	null,	null	,null	,null	,0,	null	,NULL)

    
INSERT INTO [dbo].[tblUser] ([nUserID], [nDepartmentID], [nOfficeID], [nParentDepartmentID], [sName], [sAddress1], [sAddress2], [sPhone], [sFax], [sEMail], [sDesignation], [nRoleID], [sCertPath], [sPublicKey], [sSubjectDN], [sCertSerialNo], [sCertIssuer], [dtCertExpiry], [sThumbPrint], [sOwnerName], [sImagePath], [nLevelID], [dtDateofCharge], [bFlag], [sContactNumber], [sOTPValue], [sOTPStatus], [nSortOrder], [sActive], [nCreatedUserID], [nUpdatedUserID], [dtCreated], [dtLastModified], [sFMOTPvalue], [sFEOTPvalue], [deptUserStatus], [pimsId], [auctionHostFlag])
 VALUES(
10700,	41,	77,	40,	'Class 2 Individual test2',null,	null,	null,	null,	'AAAAA@GMAIL.COM'	,null,	38	,null	,null	,null,	null,	null,	null	,null,	null,	null	,3	,'2020/08/26 16:41:39.240',	0,	null	,null,	0	,0,	'Y',	1,	7,	'2020/08/26 16:41:39.240',	'2020/08/26 16:41:39.240',	null,	null	,null	,null	,null)

SELECT * FROM tblUser WHERE [nUserID]=331
SELECT * FROM [dbo].[tblLogin] WHERE [nUserID]=331


SELECT * FROM [dbo].[tblDepartment] WHERE [nLevelID]=4

SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]='Testdeptuser'

--UPDATE [dbo].[tblUser] SET [sName]='test'
-- WHERE [nUserID]=10700

--DELETE [dbo].[tblUser] WHERE [nUserID]=10624
--DELETE [dbo].[tblLogin] WHERE [sUserName]='Testdeptuser'
