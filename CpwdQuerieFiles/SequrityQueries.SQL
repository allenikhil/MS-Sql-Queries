SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]='se-bkpt'
SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]='dept-user'
 SELECT * FROM [dbo].[tblDepartment] 
 SELECT * FROM [dbo].[tblLogin]  WHERE [nUserType] =102
 
SELECT *FROM [dbo].[tblAdminLinks]  WHERE [nLinkID] IN (
57,
58,
59
)

SELECT *FROM [dbo].[tblAdminUserLinks] WHERE [nUserType] =102

SELECT *FROM [dbo].[tblDeptAdminLinks] 
SELECT * FROM tblBottomLinks WHERE [sLinkURL]='purchaseorderdetails.html'
SELECT * FROM tblDeptBottomLinks

SELECT	BL.nLinkID, sLinkName, sLinkUrl, nPriority, sToolTip, sMenuName, sBottomDisplay
	FROM	tblBottomLinks BL
	INNER JOIN tblDeptBottomLinks DBL ON BL.nLinkID = DBL.nLinkID
	WHERE sBottomDisplay <> 'N'	AND BL.sActive='Y' AND DBL.nDepartmentID = 329


--UPDATE [dbo].[tblLogin] SET [sPassword]='15a214f8f0bea57aaf2f55d1ed1a468c',[sSubjectDN]='test1',
--[sCertSerialNo]='1748779d83',[sCertIssuer]='e-Mudhra Sub CA for Class 2 Gold Individual 2014',
--[dtCertExpiry]='2021/05/06 14:06:00.000',[dtCertActive]='2021/05/06 14:07:00.000',[sThumbPrint]='sThumbPrint'
--,[sOwnerName]='test1 - 28458858' WHERE [sUserName]='dept-user'