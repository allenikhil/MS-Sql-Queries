SELECT * FROM [dbo].[tblLogin] WHERE [nUserID]=
SELECT * FROM [dbo].[tblSupplier] WHERE [nUserID]=5442

SELECT [nSubUserId],* FROM [dbo].[tblSupplierBankDetails] WHERE nSupplierUserID = 5442 

--UPDATE tblSupplierBankDetails SET [nSubUserId]=326   WHERE  [nSupplierUserID]=5442 AND [bPrimaryAccount]=1 

SELECT [nStatus],nTenderCategory,nTenderEvalType,[nParentDepartmentID],[nCreatedBy],[sCircle_Division],* 
FROM [dbo].[tblTender] WHERE [nTenderID]=77170

SELECT * FROM [dbo].[tblDepartment] WHERE [nDepartmentID]=41

SELECT [sMessage],[bRefund],[nAmount],* FROM [dbo].[tblOnlinePayment] WHERE [nProcurementID] IN 
(SELECT [dbo].[tblTender].[nProcurementID] FROM [dbo].[tblTender] WHERE [nTenderID]=77209)


DELETE FROM [dbo].[tblOnlinePayment] WHERE [sMessage] IS NULL AND [nProcurementID] IN 
(SELECT [dbo].[tblTender].[nProcurementID] FROM [dbo].[tblTender] WHERE [nTenderID]=77209)

SELECT sType,* FROM [dbo].[tblEMDRefundDetails] WHERE   nProcurementID = 12253 AND nSupplierUserID = 5443

--ALTER TABLE [dbo].[tblEMDRefundDetails] ADD sType varchar(20);

<?xml version="1.0" encoding="UTF-8"?><TRANSACTIONS>
<OUTWARD><TRANSACTION><TRANSFERDATE>03-09-2021</TRANSFERDATE> <REMITREFNO>88293</REMITREFNO> <EPROCREFNO>test 01</EPROCREFNO> <BANKREFNO>IKAAACOAE8</BANKREFNO> <PAYMODE>INB</PAYMODE> <DEPTCODE>CPWD</DEPTCODE> <APPTYPE>TENDER</APPTYPE> <FEETYPE>EMDFEE</FEETYPE> <AMOUNT>30.75</AMOUNT> <TENDERID>12252</TENDERID> <BIDDERNAME>Test company</BIDDERNAME> <PAYTYPE>Refund</PAYTYPE> <REMARKS>NIL</REMARKS> </TRANSACTION></OUTWARD>
</TRANSACTIONS>

<?xml version="1.0" encoding="UTF-8"?><TRANSACTIONS>
<INWARD><TRANSACTION><TRANSFERDATE>03-09-2021</TRANSFERDATE> <REMITREFNO>88293</REMITREFNO> <EPROCREFNO>test 01</EPROCREFNO> <BANKREFNO>IKAAACOAE8</BANKREFNO> <PAYMODE>INB</PAYMODE> <DEPTCODE>CPWD</DEPTCODE> <APPTYPE>TENDER</APPTYPE> <FEETYPE>EMDFEE</FEETYPE> <AMOUNT>30.75</AMOUNT> <TENDERID>12252</TENDERID> <BIDDERNAME>vupadhi khairathabad</BIDDERNAME> <PAYTYPE>Settle</PAYTYPE> <REMARKS>NIL</REMARKS> </TRANSACTION></INWARD>
</TRANSACTIONS>

