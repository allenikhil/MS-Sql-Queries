SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]='testuser5'
SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]='testuser2'

SELECT [sCertSerialNoNew],* FROM [dbo].[tblSupplier] WHERE [nUserID]=5442

declare @pin_fromuserid int= (SELECT [nUserID] FROM [dbo].[tblLogin] WHERE [sUserName]='testuser333');
declare @pin_touserid int=(SELECT [nUserID] FROM [dbo].[tblLogin] WHERE [sUserName]='testuser555');

UPDATE [dbo].[tblSupplier] SET 
sCertSerialNoNew= (select [tblSupplier].[sCertSerialNoNew] from tblSupplier where nuserid=@pin_fromuserid),
[sCertIssuerNew] = (select [tblSupplier].[sCertIssuerNew] from tblSupplier where nuserid=@pin_fromuserid),
[sOwnerNameNew] = (select [tblSupplier].[sOwnerNameNew] from tblSupplier where nuserid=@pin_fromuserid),
[sPublicKeyNew]=(select [tblSupplier].[sPublicKeyNew] from tblSupplier where nuserid=@pin_fromuserid),
[sSubjectDNNew]=(select [tblSupplier].[sSubjectDNNew] from tblSupplier where nuserid=@pin_fromuserid),
sFirstName=(select [tblSupplier].[sFirstName] from tblSupplier where nuserid=@pin_fromuserid),
[dtCertExpirynew]=(select [tblSupplier].[dtCertExpirynew] from tblSupplier where nuserid=@pin_fromuserid)
where nuserid=@pin_touserid

