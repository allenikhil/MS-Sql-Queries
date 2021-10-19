SELECT sPKIEnabled,sCertLogin,sCertRevoked,* FROM [dbo].[tblLogin] WHERE [sUserName] IN ('ae-vupadhi','cpwduser103','admin')

SELECT sPKIEnabled,sCertLogin,sCertRevoked,* FROM [dbo].[tblLogin] WHERE  [nUserType]=104 AND [nUserID] IN(1168,5)


SELECT * FROM [dbo].[tblLogin] WHERE [sPKIEnabled]='N'

--with certificates
--UPDATE [dbo].[tblLogin] SET [sPKIEnabled]='Y',[sCertLogin]='Y',[sCertRevoked]='Y' WHERE [nUserID] IN (10434,17,4,7,1253)

--without certificate

--UPDATE [dbo].[tblLogin] SET [sPKIEnabled]='N',[sCertLogin]='N',[sCertRevoked]='Y' WHERE [nUserID] IN (10434,17,4,7,1253)