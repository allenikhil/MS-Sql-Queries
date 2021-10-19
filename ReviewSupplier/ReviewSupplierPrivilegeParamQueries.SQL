/*** Review Supplier checking ***/
IF @pin_sParam = 'RSC'
BEGIN
   
    DECLARE @pin_nprocurementId [int];
    DECLARE @pin_count [int];

SELECT @pin_nprocurementId=[nProcurementID] FROM [dbo].[tblTender] WHERE [nTenderID]=@pin_nRecordsPerPage

  select @pin_count=COUNT(nUserID) nUserIDCount   from (SELECT nUserID  FROM tblReviewSupplierPrivilege WHERE nUserID = @pin_nUserID AND [sActive]='Y'
union select nUserID AS nUserIDCount  FROM tblReviewSupplierPrivilege s WHERE[nTenderID] =@pin_nRecordsPerPage  AND [sActive]='Y') Temp

IF(@pin_count>0)
begin
SELECT  @pin_count=COUNT([nSupplierUserID]) FROM tblReviewSupplierPrivilegeDocuments WHERE [nProcurementID]=@pin_nprocurementId

IF(@pin_count=0)
begin
SELECT 1  AS nUserIDCount
END
ELSE
begin
SELECT 0  AS nUserIDCount
END 

END
ELSE
BEGIN
SELECT @pin_count  AS nUserIDCount
END

--SELECT 1  AS nUserIDCount

END 