SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]='se-vupadhi'


SELECT sUserName,sSubjectDN,sCertSerialNo,sCertIssuer,sCertRevoked,dtCertExpiry,dtCertActive,[sOwnerName]
FROM [dbo].[tblLogin]  WHERE [sSubjectDN]='Class 3 Organization test'

UPDATE [dbo].[tblLogin] SET [sSubjectDN]='Class 2 Organization test',[sCertSerialNo]='f87232',[sCertIssuer]='e-Mudhra Sub CA for Class 2 Organisation 2014',
[sCertRevoked]='Y',[dtCertExpiry]='2022/01/30 02:56:00.000',[dtCertActive]='2022/01/30 02:56:00.000'
,[sThumbPrint]='sThumbPrint',[sOwnerName]='Class 2 Organization test',sCertLogin='Y' WHERE [nUserID]=1222

UPDATE [dbo].[tblLogin] SET [sSubjectDN]='Class 3 individual test',[sCertSerialNo]='f872e2',[sCertIssuer]='e-Mudhra Sub CA for Class 3 Individual 2014',
[sCertRevoked]='Y',[dtCertExpiry]='2022-01-30 09:40:00.000',[dtCertActive]='2022-01-30 09:40:00.000'
,[sThumbPrint]='sThumbPrint',[sOwnerName]='Class 3 individual test - 32984199',sCertLogin='Y' WHERE [nUserID]=8511

UPDATE [dbo].[tblLogin] SET [sSubjectDN]='Class 3 Organization test',[sCertSerialNo]='f87259',[sCertIssuer]='e-Mudhra Sub CA for Class 3 Organisation 2014',
[sCertRevoked]='Y',[dtCertExpiry]='2022/01/30 03:00:00.000',[dtCertActive]='2022/01/30 03:00:00.000'
,[sThumbPrint]='sThumbPrint',[sOwnerName]='Class 3 Organization test - 31993221',sCertLogin='Y' WHERE [nUserID]=7
