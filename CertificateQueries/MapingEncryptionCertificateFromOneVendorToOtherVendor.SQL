DECLARE @pin_fromusername [varchar](100)='testuser333';
DECLARE @pin_tousername [varchar](100)='testuser555';

SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]=@pin_fromusername
SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]=@pin_tousername

SELECT [sCertSerialNoNew],[sCertSerialNoNew],* FROM [dbo].[tblSupplier] WHERE [nUserID]=(SELECT [dbo].[tblLogin].[nUserID] FROM [dbo].[tblLogin] WHERE [sUserName]=@pin_fromusername
)
SELECT [sCertSerialNoNew],sCertSerialNoNew,* FROM [dbo].[tblSupplier] WHERE [nUserID]=(SELECT [dbo].[tblLogin].[nUserID] FROM [dbo].[tblLogin] WHERE [sUserName]=@pin_tousername
)

declare @pin_fromuserid int= (SELECT [nUserID] FROM [dbo].[tblLogin] WHERE [sUserName]=@pin_fromusername);
declare @pin_touserid int=(SELECT [nUserID] FROM [dbo].[tblLogin] WHERE [sUserName]=@pin_fromusername);

UPDATE [dbo].[tblSupplier] SET 
sCertSerialNoNew= (select [tblSupplier].[sCertSerialNoNew] from tblSupplier where nuserid=@pin_fromuserid),
[sCertIssuerNew] = (select [tblSupplier].[sCertIssuerNew] from tblSupplier where nuserid=@pin_fromuserid),
[sOwnerNameNew] = (select [tblSupplier].[sOwnerNameNew] from tblSupplier where nuserid=@pin_fromuserid),
[sPublicKeyNew]=(select [tblSupplier].[sPublicKeyNew] from tblSupplier where nuserid=@pin_fromuserid),
[sSubjectDNNew]=(select [tblSupplier].[sSubjectDNNew] from tblSupplier where nuserid=@pin_fromuserid),
sFirstName=(select [tblSupplier].[sFirstName] from tblSupplier where nuserid=@pin_fromuserid),
[dtCertExpirynew]=(select [tblSupplier].[dtCertExpirynew] from tblSupplier where nuserid=@pin_fromuserid)
where nuserid=@pin_touserid

