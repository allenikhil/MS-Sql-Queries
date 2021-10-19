SELECT * FROM tbllogin ORDER BY [dtCreated] DESC

SELECT * FROM tbllogin WHERE [nUserID]=10765
SELECT * FROM tbllogin WHERE [nUserID]=330

SELECT * FROM [dbo].[tblLogin] WHERE [sUserName] IN ('shritestuser1234','shritestuser1235')

SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]='testuser333'

UPDATE [dbo].[tblLogin] SET [sUserName]='dse-vupadhi' WHERE [nUserID]=330

UPDATE [dbo].[tblLogin] SET [sCertLogin]='Y' WHERE [nUserID]=5442

SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]='se-vupadhi'

SELECT [deptUserStatus],* FROM [dbo].[tblUser] WHERE [nUserID]=330

SELECT [vendorStatus],* FROM [dbo].[tblSupplier] WHERE [nUserID]=6443

SELECT [nStatus],* FROM [dbo].[tblSupplier] WHERE [nUserID]=352

--update vendor status to bid
--UPDATE [dbo].[tblLogin] set [nStatusID]=103 WHERE  [nUserID]=4409
--UPDATE [dbo].[tblSupplier] SET [nStatus]=103  WHERE [nUserID]=4409


-- vendor turn over details
SELECT * FROM tblRegCategoryClassDetails WHERE [nSupplierUserID]=352

--vendor Bank Details
select * FROM tblSupplierBankDetails WHERE [nSupplierUserID]=10766

--DELETE tblRegCategoryClassDetails WHERE [nSupplierUserID]=352 and nid=3146
--DELETE tblSupplierBankDetails WHERE [nSupplierUserID]=10766 and [nAccountid]=3171

--skip deptuser profile
UPDATE [dbo].[tblUser] SET [deptUserStatus]=1 WHERE [nUserID]=12799


--skip deptuser profile back to update profile
SELECT * FROM tblUser WHERE [nUserID] IN ( SELECT nUserID FROM [dbo].[tblLogin] WHERE [sUserName] IN ('TES10071967JECI120001',
'TES10071967JECI120002','TES10071967JECI121989'))

--UPDATE [dbo].[tblUser] SET [deptUserStatus]=0 WHERE [nUserID] IN ( SELECT nUserID FROM [dbo].[tblLogin] WHERE [sUserName] IN ('TES10071967JECI120001',
--'TES10071967JECI120002','TES10071967JECI121989'))

UPDATE [dbo].[tblUser] SET [deptUserStatus]=0 WHERE [nUserID]=12797

--UPDATE [dbo].[tblLogin] SET [sUserName]='ae-vupadhi' WHERE [nUserID]=329

--skip vendor profile
UPDATE [dbo].[tblSupplier] SET [vendorStatus]=1  WHERE [nUserID]=5443

--skip vendor profile back to Update Profile
UPDATE [dbo].[tblSupplier] SET [sSubjectDNNew]=null,[sCertIssuerNew]=null,[sCertSerialNoNew]=null,[vendorStatus]=0  WHERE [nUserID] IN (352) 
UPDATE [dbo].[tblLogin] SET [sUserName]='testuser1234' WHERE [nUserID]=352
