;WITH CTE AS 
(
SELECT  
       [nTenderID],
      case when (sModuleName like '%UNDER CREATION%' or sModuleName ='TENDER')then '2' when sModuleName like '%Corrigendum%' then '1' when sModuleName like '%Evaluation%' then '3' when sModuleName like '%Decrypt%' then '4' end smodulename
     , ROW_NUMBER() OVER(PARTITION BY nTenderID ORDER BY dtCreated DESC) AS "RowNumber", dtCreated
  FROM tblDepartmentLog where nCreatedUserID= 331 and nTenderID IN (SELECT  [dbo].[tblTender].[nTenderID] FROM [dbo].[tblTender] WHERE [dtBidSubmissionClosingDate]< GETDATE() and
dtBidvalidityExpiryDate BETWEEN getdate() and getdate()+30 AND [nCreatedBy]=331) and (sModuleName like '%UNDER CREATION%' or  sModuleName like '%Corrigendum%' or sModuleName like '%Evaluation%' or sModuleName like '%Decrypt%' or sModuleName ='TENDER') and dtCreated between getdate()-30 and getdate() 
  )

  SELECT TOP 10  CASE WHEN sModuleName= '2' AND  nStatus=105 THEN '5'  
  WHEN sModuleName= '1' AND (SELECT TOP 1 nStatus FROM tblTenderCorrigendum WHERE nProcurementID=T.nProcurementID order by nCorrigendumID DESC)=104 THEN '6'
  ELSE sModuleName END as ntype ,nProcurementID, T.nTenderID, sTenderNo, nTenderType, nTenderCategory, mEstimatedCost, nStatus,(SELECT nCurrencyType FROM tblTenderDetails WHERE nProcurementID = T.nProcurementID) AS nCurrencyType,nTenderEvalType,isnull(beAuctionApplicable,0) as beAuctionApplicable,isnull(Aid,0) as Aid, dbo.AuctionEndDateTime(T.nProcurementID,T.aid)  as AEndDateTimeFlag, ISNULL(nobidAuctionFlag,0) AS nobidAuctionFlag,dbo.AuctionStartDateTime(T.nProcurementID,T.aid) AS AuctionStartDateTimeFlag,ISNULL(bJorFlag,0) AS bJorFlag,[dbo].[GetJorEvaluationStatus](T.nProcurementID) stagejorfilledStatus,0 as IsTenderOpened, 0 as nStagesCount, dtLastModified AS dtModified, CASE sModuleName WHEN  '1' THEN CASE WHEN (SELECT TOP 1 nStatus FROM tblTenderCorrigendum WHERE nProcurementID=T.nProcurementID ORDER by nCorrigendumID desc)=104 THEN 'Corrigendum Published' ELSE 'Corrigendum Under Creation' END WHEN '2' THEN CASE WHEN nStatus=105 THEN 'Tender Published' ELSE 'Tender Under Creation' END WHEN '3' THEN dbo.GetEvaluationStatus(nProcurementID)  when '4' then 'Open Bid' end AS nTenderStatus FROM CTE  inner join tblTender T on T.nTenderID = CTE.nTenderID WHERE  nStatus IN (101,105,109)  AND nProcurementID NOT IN(SELECT nProcurementID FROM tblTenderCorrigendum WHERE 
nStatus  IN(102,105,109)) AND RowNumber=1
  ORDER BY CTE.dtCreated DESC


SELECT  COUNT(*) FROM [dbo].[tblTender] WHERE [dtBidSubmissionClosingDate]<GETDATE() and
dtBidvalidityExpiryDate BETWEEN getdate() and getdate()+30 AND  nStatus  IN(102,105,109) AND [nCreatedBy]=330


SELECT [nTenderValidityPeriod],dtBidvalidityExpiryDate,[dtBidSubmissionClosingDate],* FROM [dbo].[tblTender]  ORDER BY [nTenderID] DESC


--UPDATE [dbo].[tblTender] SET [nTenderValidityPeriod]=CASE
--         WHEN nTenderValidityPeriod LIKE '% %' THEN LEFT(nTenderValidityPeriod, Charindex(' ', nTenderValidityPeriod) - 1)
--         ELSE nTenderValidityPeriod
--       END 

--DECLARE @datetime2 datetime2 ;
--SELECT @datetime2=[dtBidEvaluationOpeningDate] FROM [dbo].[tblTenderStages] WHERE [nProcurementID]=12010
--UPDATE tbltender SET [dtBidValidityExpiryDate]=DATEADD(DAY,CAST(nTenderValidityPeriod AS INT),@datetime2) WHERE [nProcurementID]=12010

