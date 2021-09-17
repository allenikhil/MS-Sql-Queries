SELECT * FROM [dbo].[tblAdminLinks] WHERE [sLinkUrl]='addAdditionalCharges.html'
SELECT ,[dtCreated]* FROM [dbo].[tblAdminUserLinks]

INSERT INTO [dbo].[tblAdminLinks] ([sLinkName], [sLinkUrl], [nPriority], [sToolTip], [nSortOrder], [sActive], [nCreatedUserID], [nUpdatedUserID], [dtCreated], [dtLastModified], [linkcode])
VALUES('Add Addition Charges','addAdditionalCharges.html',0,'Add Addtional Charges To Department',62,'Y',7,7,GETDATE(),GETDATE(),'D')

INSERT INTO [dbo].[tblAdminUserLinks] ([nUserType], [nLinkID], [nSortOrder], [sActive], [nCreatedUserID], [nUpdatedUserID], [dtCreated], [dtLastModified])
VALUES (101,80,0,'Y',8,null,GETDATE(),GETDATE())

SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]='cpwdimp12347'

SELECT * FROM [dbo].[tblAdditionalCharges]

truncate TABLE tblAdditionalCharges

   SELECT sDepartmentName,*  from tblDepartment where sDepartmentName like 'test%' and bEnabled=1 and bHasUsers=1
      SELECT sDepartmentName,*  from tblDepartment where [nDepartmentID]=620 and bEnabled=1 and bHasUsers=1
      
      SELECT dbo.GetDepartmentName(604),dbo.GetDepartmentNameByLevel(604,1),dbo.GetDepartmentIDByLevel(604,1)
      
      SELECT  * FROM [dbo].[tblDepartment] WHERE [nLevelID]=1
      
      SELECT d.[sDepartmentName],[ad].[dtCreated] FROM [dbo].[tblAdditionalCharges] ad
   INNER JOIN [dbo].[tblDepartment] d ON d.[nDepartmentID]=[ad].[nCircleID]
   WHERE  [ad].[nUserID]=331