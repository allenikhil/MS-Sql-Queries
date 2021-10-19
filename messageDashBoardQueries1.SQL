SELECT * FROM [dbo].[tblLogin] WHERE [nUserType]=104 AND [nUserID]=1252
SELECT * FROM [dbo].[tblLogin] WHERE [nUserType]=103 AND [nUserID]=1006
SELECT * FROM [dbo].[tblLogin] WHERE [nUserType]=103 AND sSubjectDN='test1' AND sCertSerialNo='1748779d83'  and sOwnerName='test1 - 28458858'

--UPDATE [dbo].[tblLogin] SET sPassword='15a214f8f0bea57aaf2f55d1ed1a468c',sSubjectDN='test1' ,sCertSerialNo='1748779d83', sOwnerName='test1 - 28458858',sThumbPrint='sThumbPrint',dtCertActive='2021/05/06 14:04:00.000',dtCertExpiry='2021/05/06 14:04:00.000',sCertRevoked='Y',sCertIssuer='e-Mudhra Sub CA for Class 2 Gold Individual 2014',sCertLogin='Y'
-- WHERE [nUserID]=1006

SELECT [nTenderId],[deptId],[circleId],[reciverId],[senderId],[senderFilePath],[sMessageText],[dtMessageOpened],[dtMessageSend] FROM [dbo].[tblMessageChat] WHERE  [nTenderId]=0 AND [deptId]=327

SELECT * FROM [dbo].[tblTender] WHERE [nTenderID]=36083
SELECT * FROM [dbo].[tblMessageChat] 
--sp_help tblMessageChat

--Queries for inbox list
SELECT DISTINCT [nTenderId],[deptId],[circleId] FROM [dbo].[tblMessageChat] WHERE [senderId]=1008 or [reciverId]=1008
SELECT * FROM [dbo].[tblMessageChat] WHERE [reciverId]=1008 AND [messageFlag]=0

SELECT DISTINCT [nTenderId],[deptId],[circleId] FROM [dbo].[tblMessageChat] WHERE [senderId]=1008 or [reciverId]=1008

--DELETE [dbo].[tblMessageChat] WHERE [reciverId]=1006

--UPDATE [dbo].[tblMessageChat] SET deptId=327 WHERE [nMessageId]=39
--SP_VTMS_MessageDashBoad
--DELETE [dbo].[tblMessageChat] WHERE [nMessageId]=3024
--DELETE [dbo].[tblMessageChat] WHERE [nMessageId]=8
--DELETE [dbo].[tblMessageChat] WHERE [nMessageId]=9

--UPDATE [dbo].[tblMessageChat] SET [messageFlag]=0 WHERE [nMessageId]=30

--UPDATE [dbo].[tblMessageChat] SET  [dtMessageOpened]=0 WHERE [reciverId]=1006

--TRUNCATE TABLE [tblMessageChat]
--