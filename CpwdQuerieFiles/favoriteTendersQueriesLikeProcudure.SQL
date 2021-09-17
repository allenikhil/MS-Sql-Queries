

DECLARE @pin_nSupplierUserID [int] =352

SELECT * FROM [dbo].[tblPreferences] WHERE [nSupplieruserID]=@pin_nSupplierUserID

DECLARE @pDeptid VARCHAR(50)=''
	

	DECLARE @subDeptid VARCHAR(50)=''
    
	DECLARE @tenderCategorys VARCHAR(50)=''

	DECLARE @sECV VARCHAR(50)=''
	

	DECLARE @sTypeOfWork VARCHAR(2000)=''


SELECT @pDeptid=sParentDepartments  FROM tblpreferences TP WHERE nsupplieruserid=@pin_nSupplierUserID

	
	SELECT @subDeptid=sDepartments FROM tblpreferences TP WHERE nsupplieruserid=@pin_nSupplierUserID

	SELECT @tenderCategorys=tenderCategory FROM tblpreferences TP WHERE nsupplieruserid=@pin_nSupplierUserID
    
    
	SELECT @sECV=isnull(sECV,0)  FROM tblpreferences WHERE nsupplieruserid=@pin_nSupplierUserID

	
	SELECT @sTypeOfWork= (SELECT sTypeOfWork FROM tblpreferences WHERE nsupplieruserid= @pin_nSupplierUserID) 
	
    
	DECLARE @sBidCapacity VARCHAR(50)
	SELECT @sBidCapacity= isnull(sBidCapacity,0) FROM tblpreferences WHERE nsupplieruserid=@pin_nSupplierUserID
    
    
select DISTINCT TOP 100 PERCENT t.[sTypeOfWork],[t].[mEstimatedCost],[t].[tenderCategory],t.[sCircle_Division],t.*, (Select count(tblTenderCorrigendum.nProcurementID) From tblTenderCorrigendum Where tblTenderCorrigendum.nProcurementID = T.nProcurementID and nStatus = 104 ) As numOfCorrgendums,(SELECT  count(nProcurementID)  FROM tblTenderDecrypter TD   WHERE TD.nProcurementID=T.nProcurementID AND TD.bFlag=0) AS isoldPKI,dbo.GetDepartmentPrivilege(T.nParentDepartmentID ,39) As regretbid,  te.sBidCapacity, (SELECT COUNT([nSupplierBidNo]) FROM tblSupplierBid WHERE nProcurementID=T.nProcurementID AND nSupplierUserID =352) as nSubmittedBid,receiptQueriesEmail,[nPreBidMeeting],(CASE WHEN T.preBidClarificationEndDate < GETDATE() THEN 1 ELSE 0 END) AS nPBidIconStaus from tbltender t LEFT OUTER JOIN tblTenderEligibility te ON te.nProcurementID = t.nProcurementID 
JOIN dbo.Split(@tenderCategorys ,',') s ON (tenderCategory  LIKE '%'+s.Items+'%')  
JOIN dbo.Split(@sTypeOfWork ,',') s1 ON (sTypeOfWork  LIKE '%'+s1.Items+'%')
WHERE
sCircle_Division IN (SELECT Items FROM dbo.split(@subDeptid,','))  AND
dtTenderOpeningDate <= GETDATE() and t.dtBidSubmissionClosingDate >= GETDATE() AND
cast(isnull(mEstimatedCost,0) as float) > (select isnull(sECV,0) from tblpreferences where nSupplierUserID=@pin_nSupplierUserID)
and nStatus=105 and ISNULL(nBidOffline,0)=0