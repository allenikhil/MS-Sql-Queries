DECLARE @pin_sUserName					VARCHAR(100)='Testing'
DECLARE @pin_regionOrProjectregion     VARCHAR(500)
DECLARE @pin_zoneOrCircle     VARCHAR(500)
DECLARE @pin_division     VARCHAR(500)
DECLARE @pin_subDivision     VARCHAR(500)='AE(C)-12'
DECLARE @pin_cellOrPagerNo  VARCHAR(500)
DECLARE @pin_status VARCHAR(500)
DECLARE  @pin_nUserID			INT='TestExcelUser'
DECLARE  @pin_sPhone				VARCHAR(50)='3265636'
DECLARE  @pin_sEMail				VARCHAR(50)='avc@asx.com'
DECLARE @pin_sCertSerialNo		VARCHAR(1000)='1748779d85'

DECLARE @Count [int]
    SELECT @Count= COUNT(*) FROM tblDepartment  WHERE sDepartmentName = @pin_subDivision AND [nLevelID]=5
SELECT @Count
IF(@Count=1)
BEGIN

DECLARE @deptId [int]
DECLARE @parentDepartmentID [int]
    SELECT @deptId=nDepartmentID FROM tblDepartment WHERE sDepartmentName = @pin_subDivision AND [nLevelID]=5
    SELECT @parentDepartmentID=nParentDepartmentID FROM tblDepartment WHERE sDepartmentName = @pin_subDivision AND [nLevelID]=5
    
    BEGIN TRY
    BEGIN TRANSACTION
    INSERT INTO tblLogin (sUserName, sPassword, nUserType, nFailCount, bResetPassword, dtLastPwdChange, dtLastLogin, nStatusID, nParentUserID, sPKIEnabled, sSubjectDN, sCertSerialNo, sCertLogin, sCertIssuer, dtDisclaimerDate, sCertRevoked, dtCertExpiry, dtCertActive, sThumbPrint, sOwnerName, sActive, nCreatedUserID, dtCreated)
	VALUES		(@pin_nUserID, '15a214f8f0bea57aaf2f55d1ed1a468c', 103, 0, 0, GETDATE(), GETDATE(), 103, null, 'Y', 'test2', @pin_sCertSerialNo, 'N', 'e-Mudhra Sub CA for Class 2 Gold Individual 2014', null, 'Y', GETDATE()+45, GETDATE(), '49dd8b1e4a774d415127d91a915ab099df4565a6', 'test3 - 27991188', 'Y', 7,GETDATE())	
	SET  @pin_nUserID=SCOPE_IDENTITY()
    
    INSERT INTO	tblUser(nUserID, nDepartmentID,nOfficeID, sName, sAddress1, sAddress2, sPhone, sFax, sEMail, sDesignation, nRoleID, sCertPath, nCreatedUserID, dtCreated,nLevelID,nParentDepartmentID)
	VALUES		(@pin_nUserID, @deptId, @deptId, @pin_sUserName, NULL, NULL, @pin_sPhone, NULL, @pin_sEMail, null, null, null, 7, GETDATE(),5,@parentDepartmentID)
	  
	COMMIT TRANSACTION

	select 1
    END TRY
    BEGIN CATCH
	IF @@TRANCOUNT > 0
		
		ROLLBACK TRANSACTION
		INSERT INTO  tblDeptErrorLog(nUserID, sErrorMessage, sErrorType, sErrorDescription, dtDate, sScreenName,sClassName,sMethodName)
		VALUES	(7,ERROR_MESSAGE(),ERROR_LINE(),ERROR_MESSAGE(),GETDATE(),'deptUserUpload.html','SP_VTMS_User=IDU','Insert Users')
    END CATCH
   
   END