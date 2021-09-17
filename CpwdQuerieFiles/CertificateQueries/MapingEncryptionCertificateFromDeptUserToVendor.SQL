SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]='dse-vupadhi'
SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]='testuser2'

SELECT sCertSerialNo,* FROM [dbo].[tblUser] WHERE [nUserID]=330
SELECT [sCertSerialNoNew],* FROM [dbo].[tblSupplier] WHERE [nUserID]=5442

declare @pin_fromuserid int= (SELECT [nUserID] FROM [dbo].[tblLogin] WHERE [sUserName]='dse-vupadhi');
declare @pin_touserid int=(SELECT [nUserID] FROM [dbo].[tblLogin] WHERE [sUserName]='testuser2');

UPDATE [dbo].[tblSupplier] SET 
sCertSerialNoNew= (select [tblUser].[sCertSerialNo] from tblUser where nuserid=@pin_fromuserid),
[sCertIssuerNew] = (select [tblUser].[sCertIssuer] from tblUser where nuserid=@pin_fromuserid),
[sOwnerNameNew] = (select [tblUser].[sOwnerName] from tblUser where nuserid=@pin_fromuserid),
[sPublicKeyNew]=(select [tblUser].[sPublicKey] from tblUser where nuserid=@pin_fromuserid),
[sSubjectDNNew]=(select [tblUser].[sSubjectDN] from tblUser where nuserid=@pin_fromuserid),
sFirstName=(select [tblUser].[sName] from tblUser where nuserid=@pin_fromuserid),
[dtCertExpirynew]=(select [tblUser].[dtCertExpiry] from tblUser where nuserid=@pin_fromuserid)
where nuserid=@pin_touserid

