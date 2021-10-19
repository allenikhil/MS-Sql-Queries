DECLARE @pin_fromusername [varchar](100)='MRA111111111123456789';
DECLARE @pin_tousername [varchar](100)='testbid12345'

SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]=@pin_fromusername
SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]=@pin_tousername

SELECT sCertSerialNo,* FROM [dbo].[tblUser] WHERE [nUserID] IN 
(SELECT [dbo].[tblLogin].[nUserID] FROM [dbo].[tblLogin] WHERE [sUserName]=@pin_fromusername)

SELECT [sCertSerialNoNew],sSubjectDNNew,sCertIssuerNew,* FROM [dbo].[tblSupplier] WHERE [nUserID]  IN 
(SELECT [dbo].[tblLogin].[nUserID] FROM [dbo].[tblLogin] WHERE [sUserName]=@pin_tousername)

declare @pin_fromuserid int= (SELECT [nUserID] FROM [dbo].[tblLogin] WHERE [sUserName]=@pin_fromusername);
declare @pin_touserid int=(SELECT [nUserID] FROM [dbo].[tblLogin] WHERE [sUserName]=@pin_tousername);

UPDATE [dbo].[tblSupplier] SET 
sCertSerialNoNew= (select [tblUser].[sCertSerialNo] from tblUser where nuserid=@pin_fromuserid),
[sCertIssuerNew] = (select [tblUser].[sCertIssuer] from tblUser where nuserid=@pin_fromuserid),
[sOwnerNameNew] = (select [tblUser].[sOwnerName] from tblUser where nuserid=@pin_fromuserid),
[sPublicKeyNew]=(select [tblUser].[sPublicKey] from tblUser where nuserid=@pin_fromuserid),
[sSubjectDNNew]=(select [tblUser].[sSubjectDN] from tblUser where nuserid=@pin_fromuserid),
sFirstName=(select [tblUser].[sName] from tblUser where nuserid=@pin_fromuserid),
[dtCertExpirynew]=(select [tblUser].[dtCertExpiry] from tblUser where nuserid=@pin_fromuserid)
where nuserid=@pin_touserid

