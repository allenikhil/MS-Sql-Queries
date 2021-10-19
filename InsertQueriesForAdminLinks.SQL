INSERT INTO [dbo].[tblAdminLinks] ([sLinkName], [sLinkUrl], [nPriority], [sToolTip], [nSortOrder], [sActive], [nCreatedUserID], [nUpdatedUserID], [dtCreated], [dtLastModified], [linkcode])
VALUES('Add Addition Charges','addAdditionalCharges.html',0,'Add Addtional Charges To Department',62,'Y',7,7,GETDATE(),GETDATE(),'D')

INSERT INTO [dbo].[tblAdminUserLinks] ([nUserType], [nLinkID], [nSortOrder], [sActive], [nCreatedUserID], [nUpdatedUserID], [dtCreated], [dtLastModified])
VALUES (101,80,0,'Y',8,null,GETDATE(),GETDATE())