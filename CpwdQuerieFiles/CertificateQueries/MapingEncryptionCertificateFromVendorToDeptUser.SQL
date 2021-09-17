SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]='dse-vupadhi'
SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]='testuser2'

SELECT sCertSerialNo,* FROM [dbo].[tblSupplier] WHERE [nUserID]=330
SELECT [sCertSerialNoNew],* FROM [dbo].[tblSupplier] WHERE [nUserID]=5442

declare @pin_fromuserid int= (SELECT [nUserID] FROM [dbo].[tblLogin] WHERE [sUserName]='testuser2');
declare @pin_touserid int=(SELECT [nUserID] FROM [dbo].[tblLogin] WHERE [sUserName]='dse-vupadhi');

UPDATE [dbo].[tbluser] SET 
sCertSerialNo= (select [tblSupplier].[sCertSerialNoNew] from tblSupplier where nuserid=@pin_fromuserid),
[sCertIssuer] = (select [tblSupplier].[sCertIssuerNew] from tblSupplier where nuserid=@pin_fromuserid),
[sOwnerName] = (select [tblSupplier].[sOwnerNameNew] from tblSupplier where nuserid=@pin_fromuserid),
[sPublicKey]=(select [tblSupplier].[sPublicKeyNew] from tblSupplier where nuserid=@pin_fromuserid),
[sSubjectDN]=(select [tblSupplier].[sSubjectDNNew] from tblSupplier where nuserid=@pin_fromuserid),
[sName]=(select [tblSupplier].[sFirstName] from tblSupplier where nuserid=@pin_fromuserid),
[dtCertExpiry]=(select [tblSupplier].[dtCertExpiryNew] from tblSupplier where nuserid=@pin_fromuserid)
where nuserid=@pin_touserid