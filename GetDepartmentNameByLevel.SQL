create FUNCTION GetDepartmentNameByLevel(@pin_nDepartmentID INT,@pin_nLevelID INT)
RETURNS VARCHAR(200)
AS
BEGIN	
  DECLARE  @name VARCHAR(200)
	 
;WITH DepartmentList
AS (
  SELECT D1.bhasUsers,D1.nDepartmentID, D1.sDepartmentName,D1.nParentDepartmentID, nLevelID,bDeptType
	FROM tblDepartment AS D1
	WHERE nDepartmentID = @pin_nDepartmentID
	UNION ALL
	SELECT D1.bhasUsers,D1.nDepartmentID, D1.sDepartmentName,D1.nParentDepartmentID, D1.nLevelID,D1.bDeptType
	FROM tblDepartment AS D1
	INNER JOIN DepartmentList AS D2
	ON D1.nDepartmentID = D2.nParentDepartmentID
    )
SELECT @name = CAST(CONCAT(sDepartmentName,' (',sLevelCode,')') as varchar(max))
FROM DepartmentList D INNER JOIN tblDepartmentLevels DL ON D.nLevelID=DL.nLevelID 
AND (bDeptType=sLevelCode OR bDeptType IS NULL OR bDeptType='') AND D.nLevelID = @pin_nLevelID
order by D.nLevelID  asc

   RETURN ISNULL(@name,'')

END




GO
