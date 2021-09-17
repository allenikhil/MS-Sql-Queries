SELECT nProcurementID, nTenderID, sTenderNo, nCreatedBy, nPublishNextApprover,
nTenderType, nTenderCategory, nParentDepartmentID, sCircle_Division, mEstimatedCost, 
mEMD, nEMDType, nStatus, dtTenderOpeningDate, dtTenderClosingDate , mExcessLessValue,
dtBidSubmissionClosingDate, nTenderModifier, sTenderSubject,sTenderSubject AS sNameOfWork,
sPeriodOfContract, sEMDPayableTo, mProcessFee, sPFpayableto, nTenderCall, nTypeOfQuotation, 
nTenderValidityPeriod, sNameOfWork AS sNameOfProject , sTypeOfWork, mTransactionFee, sTFPayableTo, 
mTFeeType, sInputTaxCredit, nPreBidOpener, sSourceofFunding, sPackageNo, nProcurementCatID, nSortOrder,
sActive, nCreatedUserID, nUpdatedUserID, dtCreated, dtLastModified, nPreBidMeeting, dtPreBidOpeningDate, 
dtPreBidClosingDate FROM tblTender T ORDER BY [nTenderID] DESC

SELECT [nProcurementID] FROM [dbo].[tblTender] WHERE [nTenderID] IN (64756,64731,64741)

SELECT [dtBidEvaluationOpeningDate],* FROM tblTenderStages WHERE [nProcurementID] IN (SELECT [nProcurementID] FROM [dbo].[tblTender] WHERE [nTenderID] IN (64756,64731,64741))

--UPDATE tblTenderStages SET [dtBidEvaluationOpeningDate]='2020/07/20 15:30:00.000' WHERE [dtBidEvaluationOpeningDate] IS null


SELECT dtPreBidMeetingOpeningDateNew,dtPreBidMeetingOpeningDate,* FROM [dbo].[tblTenderCorrigendum] WHERE [nCorrigendumID]=18252

--UPDATE [dbo].[tblTenderCorrigendum] SET [dtPreBidMeetingOpeningDateNew]='2020/07/15 21:38:00.000',[dtPreBidMeetingOpeningDate]='2020/07/14 21:38:00.000'  WHERE [nCorrigendumID] IN (18252)