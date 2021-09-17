SELECT * FROM [dbo].[tblLogin] WHERE [nUserID] IN (SELECT [dbo].[tblSupplier].[nUserID] FROM [dbo].[tblSupplier] WHERE [bBidderType]=2)

SELECT sRegisteredWith,sRegisetedNo,dValidUpto,sRegFileName,sRegFilePath,* FROM [dbo].[tblSupplier] WHERE [bBidderType]=2

SELECT sRegisteredWith,sRegisetedNo,dValidUpto,sRegFileName,sRegFilePath,sCategoryRegFileName,[sCategoryRegFilePath],* FROM [dbo].[tblSupplier]  WHERE [nUserID]=10683

SELECT * FROM [dbo].[tblRegCategoryClassDetails] WHERE [nSupplierUserID]=10690


DELETE [dbo].[tblSupplier] WHERE [nUserID]=10690
DELETE [dbo].[tblLogin] WHERE [nUserID]=10690
DELETE tblRegCategoryClassDetails WHERE [nSupplierUserID]=10694

--UPDATE [dbo].[tblSupplier] SET [sCategoryRegFileName]='reservationcategory.pdf', [sCategoryRegFilePath]='/appdata/TenderDocuments/SuppRegDocuments\10681\reservationcategory.pdf' WHERE [nUserID]=10681

--UPDATE [dbo].[tblRegCategoryClassDetails] SET [sCategoryRegFileName]='turnoverdoc.pdf', [sCategoryRegFilePath]='/appdata/TenderDocuments/SuppRegDocuments\10681\turnoverdoc.pdf' WHERE [nSupplierUserID]=10681

--foreign bidder
SELECT * FROM [dbo].[tblLogin] WHERE [nUserID] IN ( SELECT [dbo].[tblSupplier].[nUserID] FROM [dbo].[tblSupplier] WHERE [bBidderType] IN (1,2))
 SELECT * FROM [dbo].[tblSupplier] WHERE [bBidderType] IN (2,1)
 
 --indian bidder
 SELECT * FROM [dbo].[tblLogin] WHERE [nUserID] IN ( SELECT [dbo].[tblSupplier].[nUserID] FROM [dbo].[tblSupplier] WHERE [bBidderType] IN (0))

 SELECT * FROM [dbo].[tblSupplier] WHERE [bBidderType] IN (0)
 
 -----------------------------------------------------------------------------

INSERT INTO [dbo].[tblRegCategoryClassDetails] ([nCategoryId], [nSupplierUserID], [sCategoryTender], [sAnnualCategory], [sCategoryClass], [sEstimatedCostFrom], [sEstimatedCostTo], [dtCreated], [sTenderChk], [sCategoryRegFileName], [sCategoryRegFilePath], [validUpto])
VALUES(1,10694,'ELECTRICAL','28000000 - 999999999999999','Class 1',null,null,'2021/02/21 10:54:21.343',null,'turnoverdoc.pdf','\appdata\TenderDocuments\CategoryRegDocuments\10694\3236\turnoverdoc.pdf','2021/02/21 10:54:21.343')
 
 -----------------------------------------------------------------------------