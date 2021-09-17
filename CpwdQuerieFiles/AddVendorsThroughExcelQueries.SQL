SELECT taul.nUserType,tal.nLinkID,tal.sLinkName,tal.sLinkUrl,tal.sToolTip,tal.nSortOrder,tal.sActive,[tal].[linkcode] FROM tblAdminLinks tal 
     LEFT OUTER JOIN tblAdminUserLinks taul ON tal.nLinkID = taul.nLinkID AND tal.sActive ='Y' 
            WHERE nUserType=101 AND [linkcode]='S'
            
            
            
SELECT * FROM [dbo].[tblAdminLinks]
SELECT * FROM [dbo].[tblAdminUserLinks]  WHERE [nLinkID]=8 

--INSERT INTO [dbo].[tblAdminLinks] ([sLinkName], [sLinkUrl], [nPriority], [sToolTip], [nSortOrder], [sActive], [nCreatedUserID], [nUpdatedUserID], [dtCreated], [dtLastModified], [linkcode])
--VALUES ('Add Vendor Through Excel','addVendorFromExcel.html',0,'Add Vendors Through Excel.',60,'Y',7,7,GETDATE(),GETDATE(),'S')
--
--INSERT INTO [dbo].[tblAdminUserLinks] ([nUserType], [nLinkID], [nSortOrder], [sActive], [nCreatedUserID], [nUpdatedUserID], [dtCreated], [dtLastModified])
--VALUES (101,73,0,'Y',8,null,GETDATE(),GETDATE())


SELECT * FROM [dbo].[tblLogin] WHERE [nUserID]=10704
SELECT [nStatusID],* FROM [dbo].[tblLogin] WHERE  [sUserName] LIKE 'TestExcelVendor%'

SELECT [nStatus],* FROM [dbo].[tblSupplier] WHERE nUserID IN (10712,10713,10762)
SELECT * FROM [dbo].[tblSupplier] WHERE [sEMail]='alc@anc.com'



--DELETE [dbo].[tblSupplier] WHERE [nUserID] IN (10739,10740,10764)
--DELETE [dbo].[tblLogin] WHERE [nUserID] IN (10739,10740,10764)