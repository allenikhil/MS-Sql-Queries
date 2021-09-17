DECLARE @pin_nprocurmentid [int];
SELECT @pin_nprocurmentid=[nProcurementID] FROM [dbo].[tblTender] WHERE [nTenderID]=77222

SELECT * FROM [dbo].[tblTenderDecrypter] WHERE [nProcurementID]=@pin_nprocurmentid

SELECT * FROM [dbo].[tblUser] WHERE [nUserID] IN ( SELECT [dbo].[tblTenderDecrypter].[nUserID] FROM [dbo].[tblTenderDecrypter] WHERE [nProcurementID]=@pin_nprocurmentid)

SELECT * FROM [dbo].tblLogin WHERE [nUserID] IN ( SELECT [dbo].[tblTenderDecrypter].[nUserID] FROM [dbo].[tblTenderDecrypter] WHERE [nProcurementID]=@pin_nprocurmentid)

--UPDATE [dbo].[tblTenderDecrypter] SET [sCertPath]=1 WHERE [nProcurementID]=12305 

declare @pin_updateTouserid int=(SELECT [nUserID] FROM [dbo].[tblLogin] WHERE [sUserName]='ae-vupadhi');
declare @pin_updatefromuserid int=(SELECT [nUserID] FROM [dbo].[tblLogin] WHERE [sUserName]='ae-vupadhi')
DECLARE @pin_nprocumentId [int] =(SELECT [nProcurementID] FROM [dbo].[tblTender] WHERE [nTenderID]=77222)

UPDATE tblTenderDecrypter SET [nUserID]=@pin_updateTouserid,
[sName]=(select [tblUser].[sName] from tblUser where nuserid=@pin_updateTouserid),
[sDesignation]=(select [tblUser].[sDesignation] from tblUser where nuserid=@pin_updateTouserid),
[sPublicKey]=(select [tblUser].[sPublicKey] from tblUser where nuserid=@pin_updateTouserid),
[sCertSerialNo]=(select [tblUser].[sCertSerialNo] from tblUser where nuserid=@pin_updateTouserid),
[sSubjectDN]=(select [tblUser].[sSubjectDN] from tblUser where nuserid=@pin_updateTouserid),
[sCertIssuer]=(select [tblUser].[sCertIssuer] from tblUser where nuserid=@pin_updateTouserid),
[dtCertExpiry]=(select [tblUser].[dtCertExpiry] from tblUser where nuserid=@pin_updateTouserid)
WHERE [nUserID]=@pin_updatefromuserid AND [nProcurementID]=@pin_nprocumentId