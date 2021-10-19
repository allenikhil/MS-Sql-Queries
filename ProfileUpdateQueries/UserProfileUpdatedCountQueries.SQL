select count(*) as deptuserProfileUpedatedCount from tblUser where deptUserStatus=1
select count(*) as deptuserProfileNotUpdatedCount from tblUser where deptUserStatus=0 

SELECT COUNT(*)AS totaldeptuserscount from tblLogin l inner join tblUser u on u.nUserID=l.nUserID
inner join tblDepartment d on d.nDepartmentID=u.nDepartmentID where l.nUserID in (Select nUserID FROM tblUser)


SELECT count(*) AS deptuserProfileUpedatedCount from tblLogin l inner join tblUser u on u.nUserID=l.nUserID
inner join tblDepartment d on d.nDepartmentID=u.nDepartmentID where l.nUserID in (Select nUserID from tblUser where deptUserStatus=1)
 and d.ndepartmentid not IN (496,1,499,495)
 
 SELECT count(*) AS deptuserProfileNotUpedatedCount from tblLogin l inner join tblUser u on u.nUserID=l.nUserID
inner join tblDepartment d on d.nDepartmentID=u.nDepartmentID where l.nUserID in (Select nUserID from tblUser where deptUserStatus=0)
 and d.ndepartmentid not IN (496,499,495)
 
 
select count(*) as vendorProfileCount from tblsupplier where vendorStatus=1
select count(*) as vendorProfileNotUpdatedCount from tblsupplier where vendorStatus=0


select * FROM [dbo].[tblLogin] WHERE [nUserID] IN (select [tblUser].[nUserID]  from tblUser where deptUserStatus=1) ORDER BY [dtLastModified] DESC
select * FROM [dbo].[tblLogin] WHERE [nUserID] IN (select [tblsupplier].[nUserID]  from tblsupplier where vendorStatus=1) ORDER BY [dtLastModified] DESC