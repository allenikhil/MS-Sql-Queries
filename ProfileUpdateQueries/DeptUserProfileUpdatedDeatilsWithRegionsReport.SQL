SELECT l.sUserName,
--[u].[sName],d.sDepartmentName,
dbo.GetDepartmentNameByLevel(u.nDepartmentID,2) AS RegionProjectRegion,dbo.GetDepartmentNameByLevel(u.nDepartmentID,3) AS ZoneCircle ,dbo.GetDepartmentNameByLevel(u.nDepartmentID,4) AS ddlDivision,dbo.GetDepartmentNameByLevel(u.nDepartmentID,5) AS ddlSubDivision
from tblLogin l 
inner join tblUser u on u.nUserID=l.nUserID
inner join tblDepartment d on d.nDepartmentID=u.nDepartmentID
where l.nUserID in (Select nUserID from tblUser where deptUserStatus=1)
 and d.ndepartmentid not IN (496,1,499,495)