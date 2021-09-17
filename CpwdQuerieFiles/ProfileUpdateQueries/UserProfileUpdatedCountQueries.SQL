select count(*) as deptuserProfileCount from tblUser where deptUserStatus=1
select count(*) as vendorProfileCount from tblsupplier where vendorStatus=1


select * FROM [dbo].[tblLogin] WHERE [nUserID] IN (select [tblUser].[nUserID]  from tblUser where deptUserStatus=1) ORDER BY [dtLastModified] DESC
select * FROM [dbo].[tblLogin] WHERE [nUserID] IN (select [tblsupplier].[nUserID]  from tblsupplier where vendorStatus=1) ORDER BY [dtLastModified] DESC