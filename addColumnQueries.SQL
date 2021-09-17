ALTER TABLE tblSMSAlerts ADD smsStatus  varchar(200);
--ALTER TABLE tblEmailAlerts ADD emailStatus  varchar(200);

--ALTER TABLE [dbo].[tblPreferences] ALTER  COLUMN tenderCategory  varchar (2000);

--ALTER TABLE [dbo].[tblTender]  ADD   dtBidValidityExpiryDate  [datetime];

--ALTER TABLE [dbo].[tblTender]
--  DROP COLUMN dtBidValidityExpiryDate;

--ALTER TABLE [dbo].[tblUser] ADD deptUserStatus [bit];

--ALTER table tblUser DROP COLUMN  deptUserStatus ;


---alter for deptUser profile update 

--ALTER TABLE [dbo].[tblUser] ADD pimsId varchar (200);


--ALTER TABLE [dbo].[tblTender]  ADD   ntypeofPayment  [bit];

--ALTER TABLE [dbo].tblIntegrationFeatures ADD   nOTPTimeLimit  [int];


--ALTER TABLE [dbo].[tblCorrigendumDocTemplates] ADD sOldFileName NVARCHAR (200),sServerOldFileName NVARCHAR (200),[nOldFileSizeInBytes] [bigint];

ALTER TABLE [dbo].[tblSupplier] ADD vendorStatus [bit];
ALTER TABLE [dbo].[tblSupplier] ADD auctionHostFlag [bit];

--ALTER table tblSupplier DROP COLUMN  vendorStatus ;

ALTER TABLE [dbo].[tblDepartment] ADD auctionHostFlag [bit];
ALTER TABLE [dbo].[tblUser] ADD auctionHostFlag [bit];

----------------------changes for Multiple company names-----------------------------
ALTER TABLE [dbo].[tblSupplier] ADD nSubUserId [int] NOT NULL IDENTITY (1,1);
ALTER TABLE [dbo].[tblSupplier] ADD bPrimaryAccount [bit];
UPDATE  tblSupplier SET bPrimaryAccount=1

ALTER TABLE tblSupplierBankDetails ADD nSubUserId [int];
ALTER TABLE tblSupplierBankDetails ADD bPrimaryAccount [bit];
UPDATE  tblSupplierBankDetails SET bPrimaryAccount=1

ALTER TABLE tblRegCategoryClassDetails ADD nSubUserId [int];
ALTER TABLE tblRegCategoryClassDetails ADD bPrimaryAccount [bit];
UPDATE  tblRegCategoryClassDetails SET bPrimaryAccount=1

CREATE TABLE tblDuplicatePanNumbers(sPanNo [varchar](50));

--ALTER TABLE tblDuplicatePanNumbers ADD sCompanyName varchar (100),sContactNumber [varchar] (15),[sCity] [varchar] (50);

ALTER TABLE [dbo].[tblSupplier] ADD [sAdministrationEMail] [varchar] (100),[sAdministrationContactNumber] [varchar] (15);
ALTER TABLE [dbo].[tblUser] ADD [sDesignationEMail] [varchar] (50) NULL;

ALTER TABLE [dbo].[tblTenderPreQualifications] ADD nSubUserId [int];
-------------------------------------------------------------------------------------
ALTER TABLE [dbo].[tblAdditionalCharges]  ADD   dtCreated  [datetime];
--truncate table tblAdditionalCharges

-------------------------------------------------------------------------------------

ALTER TABLE [dbo].[tblSupplier] ADD bMigratedUser [bit];
UPDATE tblSupplier SET [bMigratedUser]=1 

-------------------------------------------------------------------------------------

ALTER TABLE tblReviewSupplierPrivilege ADD nTenderID [int];




