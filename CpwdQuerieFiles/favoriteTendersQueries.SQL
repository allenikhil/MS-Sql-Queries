SELECT * FROM [dbo].[tblUser] WHERE [nDepartmentID]=492

SELECT * FROM tblPreferences WHERE [nSupplieruserID]=352


SELECT [sTypeOfWork],[mEstimatedCost],* FROM [dbo].[tblTender] WHERE [nTenderID] IN (75779,76983,76986)

--UPDATE [dbo].[tblPreferences] SET [sDepartments]='41,490,59,323' WHERE [nSupplieruserID]=352

--UPDATE [dbo].[tblPreferences] SET [sTypeOfWork]='58,31,25,45,26,1' WHERE [nSupplieruserID]=352

--UPDATE [dbo].[tblPreferences] SET [sParentDepartments]='40,239,239,239,239,239,239,239,40,239,339,385,327,366,40,435,40,40' WHERE [nSupplieruserID]=352





--------------------------------------------------------------------------------------------------------------------------------------------------------------------

select TOP 100 PERCENT T.*, (Select count(tblTenderCorrigendum.nProcurementID) From tblTenderCorrigendum Where tblTenderCorrigendum.nProcurementID = T.nProcurementID and nStatus = 104 ) As numOfCorrgendums,(SELECT  count(nProcurementID)  FROM tblTenderDecrypter TD   WHERE TD.nProcurementID=T.nProcurementID AND TD.bFlag=0) AS isoldPKI,dbo.GetDepartmentPrivilege(T.nParentDepartmentID ,39) As regretbid,  te.sBidCapacity, (SELECT COUNT([nSupplierBidNo]) FROM tblSupplierBid WHERE nProcurementID=T.nProcurementID AND nSupplierUserID =352) as nSubmittedBid,receiptQueriesEmail,[nPreBidMeeting],(CASE WHEN T.preBidClarificationEndDate < GETDATE() THEN 1 ELSE 0 END) AS nPBidIconStaus from tbltender t LEFT OUTER JOIN tblTenderEligibility te ON te.nProcurementID = t.nProcurementID
JOIN dbo.Split('2,3,4',',') s 
 ON (tenderCategory  LIKE N'%'+s.Items+'%') JOIN dbo.Split('58,31,25,45,26,1',',') s1 
 ON (sTypeOfWork  LIKE N'%'+s1.Items+'%')
and [sCircle_Division] IN (492)
and dtTenderOpeningDate <= GETDATE() and t.dtBidSubmissionClosingDate >= GETDATE() 
and cast(isnull(mEstimatedCost,0) as float) > (select isnull(sECV,0) from tblpreferences where nSupplierUserID=352)
 and nStatus=105 and ISNULL(nBidOffline,0)=0
 
 --------------------------------------------------------------------------------------------------------------------------------------------------------------------
 
 
 select DISTINCT  TOP 100 PERCENT T.* ,(Select count(tblTenderCorrigendum.nProcurementID) From tblTenderCorrigendum Where tblTenderCorrigendum.nProcurementID = T.nProcurementID and nStatus = 104 ) As numOfCorrgendums,(SELECT  count(nProcurementID)  FROM tblTenderDecrypter TD   WHERE TD.nProcurementID=T.nProcurementID AND TD.bFlag=0) AS isoldPKI,dbo.GetDepartmentPrivilege(T.nParentDepartmentID ,39) As regretbid,  te.sBidCapacity, (SELECT COUNT([nSupplierBidNo]) FROM tblSupplierBid WHERE nProcurementID=T.nProcurementID AND nSupplierUserID =352) as nSubmittedBid,receiptQueriesEmail,[nPreBidMeeting],(CASE WHEN T.preBidClarificationEndDate < GETDATE() THEN 1 ELSE 0 END) AS nPBidIconStaus from tbltender t LEFT OUTER JOIN tblTenderEligibility te ON te.nProcurementID = t.nProcurementID
                JOIN dbo.Split( '2,3,4' ,',') s ON (tenderCategory  LIKE N'%'+s.Items+'%')  
                JOIN dbo.Split('58,31,25,45,26,1' ,',') s1   ON  (sTypeOfWork  LIKE N'%'+s1.Items+'%') 
                where sCircle_Division IN (SELECT Items FROM dbo.split('492',','))  
                AND dtTenderOpeningDate <= GETDATE() and t.dtBidSubmissionClosingDate >= GETDATE() AND cast(isnull(mEstimatedCost,0) as float) > (select isnull(sECV,0) from tblpreferences where nSupplierUserID=352) AND  nStatus=105 and ISNULL(nBidOffline,0)=0




