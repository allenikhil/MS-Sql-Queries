SELECT * FROM [dbo].[tblLogin] WHERE [nUserID]=11772

SELECT [sSubjectDN],[sCertIssuer],[sCertSerialNo],[dtCertExpiry],[sThumbPrint],[sOwnerName],* FROM [dbo].[tblLogin] WHERE [sUserName]='TestVendo870'
--Reset sigining Certificate for any user
--UPDATE [dbo].[tblLogin] SET [sSubjectDN]=null,sCertIssuer=null,sCertSerialNo=null,dtCertExpiry=null,sThumbPrint=null,sOwnerName=null,sCertLogin='N'  WHERE [nUserID]=11773

--if nusertype-104 in tbllogin --supplier
SELECT * FROM [dbo].[tblLogin] WHERE [nUserType]=104

--Reset encryption Certificate for supplier
SELECT [sSubjectDNNew],[sCertIssuerNew],[sCertSerialNoNew],[sPublicKeyNew],[dtCertExpiryNew],[sThumbPrintNew],[sOwnerNameNew],* FROM [dbo].[tblSupplier]  WHERE [nUserID]=352

--UPDATE [dbo].[tblSupplier] SET [sSubjectDNNew]=null,[sCertIssuerNew]=null,[sCertSerialNoNew]=null,[sPublicKeyNew]=null,[dtCertExpiryNew]=null   WHERE [nUserID]=11794

-----------------------------------------------------for Dept user-----------------------------------------------------------
--if nusertype-103 in tbllogin --dept user
SELECT * FROM [dbo].[tblLogin] WHERE [nUserType]=103
SELECT * FROM [dbo].[tblLogin] WHERE [nUserID] IN (SELECT [dbo].[tblUser].[nUserID] FROM [dbo].[tblUser] WHERE [sSubjectDN] is NOT null)
SELECT * FROM [dbo].[tblUser] WHERE [sSubjectDN] is NOT NULL

--Reset encryption Certificate for dept user
SELECT [sSubjectDN],[sCertIssuer],[sCertSerialNo],[sPublicKey],[dtCertExpiry],[sThumbPrint],[sOwnerName],* FROM [dbo].[tbluser]  WHERE [nUserID]=5

--UPDATE [dbo].[tbluser] SET [sSubjectDN]=null,[sCertSerialNo]=null   WHERE [nUserID]=5
