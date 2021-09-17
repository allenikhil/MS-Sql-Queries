SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]='Foreignve123'
SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]='IndianVen123'
--cpwduserf203,cpwduserl203
SELECT * FROM [dbo].[tblLogin] WHERE [sUserName] LIKE 'testuser1'


SELECT [sCertSerialNo],* FROM [dbo].[tblLogin] WHERE nUserID=10721
SELECT [sCertSerialNoNew],* FROM [dbo].[tblSupplier] WHERE nUserID=10721

--Registration Details with statutory bodies(MSME,NSIC etc. if any) documents
SELECT [sRegFileName],sRegFilePath,* FROM [dbo].[tblSupplier]  WHERE [nUserID]=10694

--Reservation Category documents
SELECT [sCategoryRegFileName],sCategoryRegFilePath,* FROM [dbo].[tblSupplier]  WHERE [nUserID]=10694

--UPDATE [dbo].[tblSupplier] SET [sCategoryRegFilePath]='/appdata/TenderDocuments/SuppRegDocuments\10694\reservationcategory.pdf' WHERE [nUserID]=10694

--Put vendor into revert mode

UPDATE [dbo].[tblLogin] SET [nStatusID]=110 WHERE [nUserID]=352
UPDATE [dbo].[tblSupplier] SET [nStatus]=110 WHERE [nUserID]=352

--put vendor into view page like after registration view

UPDATE [dbo].[tblLogin] SET [nStatusID]=102 WHERE [nUserID]=352
UPDATE [dbo].[tblSupplier] SET [nStatus]=102 WHERE [nUserID]=352

--put vendor in approve mode

UPDATE [dbo].[tblLogin] SET [nStatusID]=105 WHERE [nUserID]=352
UPDATE [dbo].[tblSupplier] SET [nStatus]=105 WHERE [nUserID]=352


DELETE [dbo].[tblSupplier] WHERE [nUserID]=10721
DELETE [dbo].[tblLogin] WHERE [nUserID]=10721
-----------------------------------------------------------------------

--turn over details of an vendor

SELECT * FROM [dbo].[tblRegCategoryClassDetails] WHERE [nSupplierUserID]=10726

--DELETE tblRegCategoryClassDetails where [nSupplierUserID]=10694 AND [nCategoryId] IN (1)


