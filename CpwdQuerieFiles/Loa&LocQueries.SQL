SELECT [nStatus],nLOAGenerator,nTenderCategory,* FROM [dbo].[tblTender] WHERE [nStatus]=110

SELECT * FROM [dbo].[tblAdminLinks]
SELECT * FROM [dbo].[tblBottomLinks] WHERE  slinkname LIKE '%lo%'
SELECT * FROM [dbo].[tblBottomLinks] WHERE [nLinkID]=98
--INSERT INTO [dbo].[tblBottomLinks] ([sLinkName], [sLinkUrl], [nPriority], [sToolTip], [sMenuName], [sBottomDisplay], [nSortOrder], [sActive], [nCreatedUserID], [nUpdatedUserID], [dtCreated], [dtLastModified])
--VALUES('LOC','LOCGenerate.html',6,'LOC','LOc',	'Y',0,'Y',7,7,GETDATE(),GETDATE()
--)


--ALTER TABLE [dbo].[tblLOc] 
--ALTER COLUMN [nTimeAllowed] [varchar](200);

SELECT [nTimeAllowed],* FROM [dbo].[tblLOA] WHERE [nProcurementID]=10668
SELECT [nTimeAllowed],* FROM [dbo].[tblLOC] WHERE [nProcurementID]=10668
SELECT [sPeriodOfContract],* FROM [dbo].[tblTender] WHERE  [nProcurementID]=10668

--UPDATE [dbo].[tblBottomLinks] SET [sMenuName]='LOA' WHERE [nLinkID]=189
SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]='admin'

--UPDATE [dbo].[tblLogin] SET [sPassword]='15a214f8f0bea57aaf2f55d1ed1a468c' WHERE [nUserID]=7

SELECT * FROM [dbo].[tblTender]
SELECT * FROM [dbo].[tblLOA]

SELECT t.nProcurementID, t.nTenderID, t.sTenderNo, t.nCreatedBy, t.nPublishNextApprover, t.nTenderType, t.nTenderCategory, t.nParentDepartmentID,
t.sCircle_Division, t.mEstimatedCost, t.mEMD, t.nEMDType,t. nStatus, t.dtTenderOpeningDate, t.dtTenderClosingDate, t.mExcessLessValue,t.dtBidSubmissionClosingDate,
t.nTenderModifier, t.sTenderSubject, t.sPeriodOfContract, t.sEMDPayableTo, t.mProcessFee, t.sPFpayableto, t.nTenderCall, t.nTypeOfQuotation, t.nTenderValidityPeriod, 
t.sNameOfWork, t.sTypeOfWork, t.mTransactionFee, t.sTFPayableTo, t.mTFeeType, t.sInputTaxCredit, t.sSourceofFunding, t.sPackageNo, t.nProcurementCatID, t.nSortOrder, 
t.sActive, t.nCreatedUserID, t.nUpdatedUserID, t.dtCreated, t.dtLastModified  FROM tblTender t
inner JOIN [dbo].[tblLOA] L ON [L].[nProcurementID] = [t].[nProcurementID]
WHERE t.nStatus=110 AND t.nLOAGenerator=331 