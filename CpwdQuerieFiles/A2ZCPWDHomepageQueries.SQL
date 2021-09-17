SELECT * FROM [dbo].[tblLogin] WHERE [sUserName] LIKE 'se-bkpt%'
SELECT * FROM [dbo].[tblLogin] 

--UPDATE [dbo].[tblLogin] SET [sPKIEnabled]='N' ,[sCertLogin]='N' WHERE [nUserID]=1252

SELECT nTenderID,nStatus,dtTenderOpeningDate,dtBidSubmissionClosingDate,nTenderType FROM [dbo].[tblTender] WHERE nTenderType = 101 and [nTenderID] IN (34827,33803,33811,33813,33803,33802,36085,36086,37097,37098,36084,36083,36082)
--UPDATE [dbo].[tblTender] SET [dtTenderOpeningDate]=GETDATE(),dtBidSubmissionClosingDate =GETDATE()+7 WHERE [nTenderID] IN (34827,33803,33811,33813,33803,33802,36085,36086,37097,37098,36084,36083,36082)


SELECT * FROM [dbo].[tblTender] WHERE nStatus = 105 AND dtTenderOpeningDate <= GETDATE() AND dtBidSubmissionClosingDate >= GETDATE() AND nTenderType = 101 
SELECT top 5  nProcurementId, TD.sDepartmentName ,(SELECT sDepartmentName FROM tblDepartment WHERE nDepartmentID = TT.sCircle_Division) sCircle_Division,tt.ntenderID, sTenderNo, sNameOfWork ,mEstimatedCost, bEstimatedCostVisible, dtTenderOpeningDate, dtBidSubmissionClosingDate, 
(select COUNT(*) FROM [dbo].[tblTender] WHERE nStatus = 105 AND dtTenderOpeningDate <= GETDATE() AND dtBidSubmissionClosingDate >= GETDATE() AND nTenderType = 101) AS 'CTCount',
	CASE bEstimatedCostVisible
	WHEN 0 THEN 'N/A'
	ELSE mEstimatedCost
	END AS resultmEstimatedCost,sDepartment
	FROM	tblTender TT,tblDepartment TD
	Where	TT.nParentDepartmentID = TD.nDepartmentID
    AND TT.nParentDepartmentID NOT IN (4167)
	AND	    nStatus = 105
	AND	    dtTenderOpeningDate <= getdate()
	AND		dtBidSubmissionClosingDate >= getdate()
	AND		nTenderType = 101
	order by TT.dtTenderOpeningDate DESC
    
    
    
    SELECT  nTenderCategoryID, sTenderCategoryName
		FROM tblTenderCategory WHERE sActive='Y'