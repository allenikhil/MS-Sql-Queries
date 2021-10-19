SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]='saiskanda123'
SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]='cpwduser104'

declare @pin_fromuserid int= (SELECT [nUserID] FROM [dbo].[tblLogin] WHERE [sUserName]='testuser4321');
declare @pin_touserid int=(SELECT [nUserID] FROM [dbo].[tblLogin] WHERE [sUserName]='cpwduser104');
update tbllogin set  sSubjectDN = (select sSubjectDN from tbllogin where nuserid=@pin_fromuserid), 
sCertSerialNo = (select sCertSerialNo from tbllogin where nuserid=@pin_fromuserid),
sCertIssuer = (select sCertIssuer from tbllogin where nuserid=@pin_fromuserid),
dtCertExpiry = (select dtCertExpiry from tbllogin where nuserid=@pin_fromuserid),
dtCertActive = (select dtCertActive from tbllogin where nuserid=@pin_fromuserid),
sThumbPrint = (select sThumbPrint from tbllogin where nuserid=@pin_fromuserid),
sOwnerName = (select sOwnerName from tbllogin where nuserid=@pin_fromuserid),
[sCertLogin]='Y',[sPKIEnabled]='Y',[sCertRevoked]='Y'
where nuserid=@pin_touserid