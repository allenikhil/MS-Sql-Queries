 SELECT [d].[nDepartmentID],dbo.GetDepartmentNameByLevel(u.nDepartmentID,2) AS RegionProjectRegion
 ,COUNT(*) AS regionProfileUpdatedCount
FROM  tblDepartment d 
INNER JOIN [dbo].[tblUser] u ON [u].[nDepartmentID] = [d].[nDepartmentID]
where d.ndepartmentid not IN (496,1,499,495)  AND [u].[deptUserStatus]=1
GROUP BY u.nDepartmentID,[d].[nDepartmentID],u.[nDepartmentID]

;WITH DepartmentList
AS  (SELECT dbo.GetDepartmentNameByLevel(u.nDepartmentID,2) AS RegionProjectRegion
 ,COUNT(*) AS regionProfileUpdatedCount
FROM  tblDepartment d 
INNER JOIN [dbo].[tblUser] u ON [u].[nDepartmentID] = [d].[nDepartmentID]
where d.ndepartmentid not IN (496,1,499,495)  AND [u].[deptUserStatus]=1
GROUP BY u.nDepartmentID,[d].[nDepartmentID],u.[nDepartmentID])

SELECT RegionProjectRegion,SUM(regionProfileUpdatedCount) AS regionProfileUpdatedCount FROM DepartmentList
GROUP BY RegionProjectRegion