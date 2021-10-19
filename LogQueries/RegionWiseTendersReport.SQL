SELECT dbo.GetDepartmentNameByLevel(sCircle_Division,2) AS RegionProjectRegion,dbo.GetDepartmentNameByLevel(sCircle_Division,3) AS ZoneCircle ,dbo.GetDepartmentNameByLevel(sCircle_Division,4) AS ddlDivision,dbo.GetDepartmentNameByLevel(sCircle_Division,5) AS ddlSubDivision, 
dbo.GetDepartmentName(sCircle_Division) as [sMappingDeptName],einprocess=COUNT(CASE WHEN [dtbidsubmissionclosingdate]<GETDATE() AND [nStatus] = 105 THEN 1 END),
tduebid = COUNT(CASE WHEN  [dtbidsubmissionclosingdate]>GETDATE() AND [nStatus] = 105 THEN 1  END ),
underCreation = COUNT(CASE WHEN [nStatus] = 101 THEN 1  end ),
closed = COUNT(CASE WHEN  [nStatus] = 110 OR [nStatus] = 111 OR [nStatus] = 112 THEN 1 END),
rejected = COUNT (CASE WHEN [nStatus]  IN(106,107)  THEN 1 END),
total = COUNT(CASE WHEN [nStatus] IN(105,110,107,106,111,112,101) THEN 1 END)
FROM [dbo].[tbltender] T
GROUP BY dbo.GetDepartmentName(sCircle_Division),dbo.GetDepartmentNameByLevel(sCircle_Division,2),dbo.GetDepartmentNameByLevel(sCircle_Division,3),dbo.GetDepartmentNameByLevel(sCircle_Division,4),dbo.GetDepartmentNameByLevel(sCircle_Division,5)










