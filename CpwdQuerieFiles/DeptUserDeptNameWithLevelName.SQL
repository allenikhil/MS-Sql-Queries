DECLARE @pin_nuseid int;
SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]='MRA999999999123456789'
SELECT @pin_nuseid=nUserID FROM [dbo].[tblLogin] WHERE [sUserName]='MRA999999999123456789'


;WITH DepartmentList
AS (
  SELECT D1.bhasUsers,D1.nDepartmentID, D1.sDepartmentName,D1.nParentDepartmentID, CAST(CONCAT('','','') as varchar(max)) as sParentDepartmentName, nLevelID,bDeptType
	FROM tblDepartment AS D1
	WHERE nDepartmentID = (SELECT nDepartmentID FROM	tblUser U WHERE	U.nUserID IN(@pin_nuseid)) 
	UNION ALL
	SELECT D1.bhasUsers,D1.nDepartmentID, D1.sDepartmentName,D1.nParentDepartmentID, CAST(CONCAT(D2.sParentDepartmentName,'-',D1.sDepartmentName) as varchar(max)) as sParentDepartmentName, D1.nLevelID,D1.bDeptType
	FROM tblDepartment AS D1
	INNER JOIN DepartmentList AS D2
	ON D1.nDepartmentID = D2.nParentDepartmentID
    )
SELECT  sDepartmentName, D.nLevelID,sLevelName,sLevelCode
FROM DepartmentList D INNER JOIN tblDepartmentLevels DL ON D.nLevelID=DL.nLevelID 
AND (bDeptType=sLevelCode OR bDeptType IS NULL OR bDeptType='') 
order by D.nLevelID  asc