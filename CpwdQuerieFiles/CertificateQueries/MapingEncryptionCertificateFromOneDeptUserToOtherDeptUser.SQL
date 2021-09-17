SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]='dse-vupadhi'
SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]='se-vupadhi'

SELECT sCertSerialNo,* FROM [dbo].[tblUser] WHERE [nUserID]=330

declare @pin_fromuserid int= (SELECT [nUserID] FROM [dbo].[tblLogin] WHERE [sUserName]='ae-vupadhi');
declare @pin_touserid int=(SELECT [nUserID] FROM [dbo].[tblLogin] WHERE [sUserName]='cpwduser103');

UPDATE [dbo].[tblUser] SET 
sCertSerialNo= (select [tblUser].[sCertSerialNo] from tblUser where nuserid=@pin_fromuserid),
[sCertIssuer] = (select [tblUser].[sCertIssuer] from tblUser where nuserid=@pin_fromuserid),
[sOwnerName] = (select [tblUser].[sOwnerName] from tblUser where nuserid=@pin_fromuserid),
[sPublicKey]=(select [tblUser].[sPublicKey] from tblUser where nuserid=@pin_fromuserid),
[sSubjectDN]=(select [tblUser].[sSubjectDN] from tblUser where nuserid=@pin_fromuserid),
sName=(select [tblUser].[sName] from tblUser where nuserid=@pin_fromuserid),
[dtCertExpiry]=(select [tblUser].[dtCertExpiry] from tblUser where nuserid=@pin_fromuserid)
where nuserid=@pin_touserid

