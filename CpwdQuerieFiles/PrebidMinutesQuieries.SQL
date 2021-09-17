------------------------For Prebidmintues In Corrigendum -------------------------------------------------------

SELECT * FROM tblMCorrigendumConditions WHERE [sActive]='Y'

SELECT [dtBidSubmissionClosingDate],* FROM [dbo].[tblTender] WHERE [nTenderID]=64698

SELECT nTenderEvalType,bEMDApplicable,nTenderType FROM [dbo].[tblTender] WHERE [nTenderID]=64694

SELECT *,(select case when COUNT(nProcurementID)=0 then 0 else 1 end FROM tblTenderStages WHERE nProcurementID=10716 AND  bBidOpened =0) AS evalDateStatus FROM tblMCorrigendumConditions  WHERE sActive='Y' AND  (nTenderCategory=100 OR nTenderCategory = 101) AND nID <>14 ORDER BY nSortOrder

--INSERT INTO [dbo].[tblMCorrigendumConditions] ([nID], [nTenderCategory], [sName], [sDescription], [sLinkURL], [sViewLinkURL], [nSortOrder], [sActive], [nCreatedUserID], [nUpdatedUserID], [dtCreated], [dtLastModified])
--VALUES
--(16,100,'Prebid Meeting Documents','Provision to upload documents and bidder selection provision','prebidmeetingDocuments.html','ViewPrebidmeetingDocuments.html',16,'Y',1,null,GETDATE(),GETDATE())

--UPDATE  tblMCorrigendumConditions SET [sActive]='N' WHERE [nID]=17

SELECT * FROM tblCorrigendumDocuments ORDER BY [nCorrigendumID] DESC
SELECT * FROM tblPrebidmeetingmDocuments ORDER BY [nCorrigendumID] DESC

--TRUNCATE TABLE tblPrebidmeetingmDocuments

--INSERT INTO [dbo].[tblPrebidmeetingmDocuments] ([nCorrigendumID], [sPrebidmeetingDocName], [sPrebidmeetingDocDescription], [sPrebidmeetingDocPath], [nProcurementID], [nPrebidmeetingDocSize], [sSignData], [sTSSignature], [sPublicKey], [sCertDetails], [nSortOrder], [sActive], [nCreatedUserID], [nUpdatedUserID], [dtCreated], [dtLastModified])
--INSERT INTO [dbo].[tblCorrigendumDocuments] ([nCorrigendumID], [nProcurementID], [sCorrigendumDocName], [sCorrigendumDocDescription], [sCorrigendumDocPath], [nCorrigendumDocSize], [sSignData], [sTSSignature], [sPublicKey], [sCertDetails], [nSortOrder], [sActive], [nCreatedUserID], [nUpdatedUserID], [dtCreated], [dtLastModified])


--ALTER TABLE  tblPrebidmeetingmDocuments 
--ALTER COLUMN sSignData nvarchar(max)

sp_HELP tblCorrigendumDocuments
sp_HELP tblPrebidmeetingmDocuments
--CREATE TABLE tblPrebidmeetingmDocuments (
--    nPrebidmeetingDocID int NOT NULL IDENTITY(1,1) ,
--    nCorrigendumID int NOT NULL,
--    sPrebidmeetingDocName nvarchar(500),
--    sPrebidmeetingDocDescription nvarchar(1000),
--    sPrebidmeetingDocPath nvarchar(1000),
--    nProcurementID int,
--    nPrebidmeetingDocSize int,
--sSignData [nvarchar],
--sTSSignature [nvarchar],
--sPublicKey varchar(2000),
--sCertDetails varchar(1000),
--nSortOrder int,
--sActive varchar(1),
--nCreatedUserID int,
--nUpdatedUserID int,
--dtCreated [datetime],
--dtLastModified [datetime]
--
--);

SELECT * FROM tblCorrigenLtdSuppliers

SELECT [receiptQueriesEmail],* FROM [dbo].[tblTender] WHERE [nTenderID]=64706

--UPDATE [dbo].[tblTender] SET [receiptQueriesEmail]='abc@abc.com' WHERE [nTenderID]=64706

--INSERT INTO [dbo].[tblMCorrigendumConditions] ([nID], [nTenderCategory], [sName], [sDescription], [sLinkURL], [sViewLinkURL], [nSortOrder], [sActive], [nCreatedUserID], [nUpdatedUserID], [dtCreated], [dtLastModified])
--VALUES
--(17,100,'Addition of Supplier','Provision to add of suppliers','additionSupplierPrebidMinuteDept.html','ViewadditionSupplierPrebidMinute.html',16,'Y',1,null,GETDATE(),GETDATE())


------------------------For Addition Of Supplier in Prebidmintues-------------------------------------------------------

--[dbo].[SP_VTMS_DeptLtdSuppliers]

SELECT * FROM tblDeptLtdSuppliers
SELECT * FROM tblPrebidMinutesAddSuppliers

SELECT * FROM tblPreBidQueries WHERE [nProcurementID]=10762

SELECT sUserName,* FROM [dbo].[tblLogin] WHERE [nUserType]=104

SELECT [dtPreBidOpeningDate],preBidClarificationEndDate,* FROM [dbo].[tblTender] WHERE [nTenderID]=64740

--UPDATE [dbo].[tblTender] SET [dtPreBidOpeningDate]=GETDATE() WHERE [nTenderID]=64741

SELECT  [dtPreBidOpeningDate],T.*  FROM tblTender T WHERE	nPreBidMeeting = 1 AND nPreBidOpener = 331 AND nStatus = 105 AND  dtPreBidOpeningDate <= GETDATE()  ORDER BY dtCreated DESC


--TRUNCATE TABLE tblPrebidMinutesAddSuppliers

--CREATE TABLE tblPrebidMinutesAddSuppliers (
--    nDepartmentID int NOT NULL ,
--    nSupplierUserID int NOT NULL,
--    nSortOrder int,
--sActive varchar(1),
--nCreatedUserID int,
--nUpdatedUserID int,
--dtCreated [datetime],
--dtLastModified [datetime],
--   nParentDepartmentID int 
--);