--News and scorlling queries
SELECT * FROM tblbannerads
DELETE [dbo].[tblBannerAds] WHERE [nID]=5
--TRUNCATE TABLE tblbannerads

SELECT * FROM [dbo].[tblTender] WHERE [nStatus]=105 AND [dtBidSubmissionClosingDate]>=GETDATE()

SELECT [dtCertExpiry],[sActive],* FROM [dbo].[tblLogin] WHERE [sUserName] LIKE 'testuser%'
SELECT sUserName FROM tblLogin WHERE sUserName = 'testuser1' AND dtCertExpiry < GETDATE() AND sActive = 'Y'
SELECT [sContactNumber],* FROM [dbo].[tblSupplier] WHERE [nUserID]=352
--UPDATE [dbo].[tblSupplier] SET [sContactNumber]=7013601641 WHERE [nUserID]=352
--UPDATE [dbo].[tblLogin] SET [dtCertExpiry]=GETDATE()-100 WHERE [nUserID]=352


SELECT [sNameOfWork],* FROM [dbo].[tblTender] WHERE [nTenderID]=63413

--UPDATE [dbo].[tblTender] SET [sNameOfWork]='Supply, Testing, Commissioning and Training of Acoustic Doppler Current Profiler (ADCP) for Irrigation and CAD department telangana under National Hydrology Project (NHP)'
--,[sTenderNo]='NHP/TSSW/NCB-7/A1.3.01/2020-2021' WHERE [nTenderID]=63413

--corrigendums
SELECT [dtLastModified],* FROM tblTenderCorrigendum WHERE [nProcurementID] IN (SELECT [nProcurementID] FROM [dbo].[tblTender] WHERE [nTenderID] IN (49044,63485)
)
--UPDATE tblTenderCorrigendum SET [dtLastModified]='2020/06/04 10:32:40.383' WHERE [nProcurementID] IN (SELECT [nProcurementID] FROM [dbo].[tblTender] WHERE [nTenderID] IN (49044,63485))
--opended Tenders IN cpwd home page
select top 5 * from tbltender where nstatus=105 and dtBidSubmissionClosingDate<getdate() and dbo.IsTenderOpened(nProcurementID)=1 order by dtLastModified DESC
--awared Tenders in cpwd home page
SELECT TOP 5  [t].[nProcurementID],[snameofwork], nTenderID, sdepartmentname,[sCircle_Division],[sTenderNo],[sTenderSubject],[mEstimatedCost],[dtDateofApproval],[dtAwardedDate],[nnoofbids],DATEDIFF(dd, dtDateofApproval, dtAwardedDate) datedif ,nTenderCategory,
                  [s].[nSupplierUserID],(SELECT sCompanyName FROM tblsupplierBidProfile WHERE [nSupplierUserID] = [s].[nSupplierUserID] and nProcurementID=[s].[nProcurementID]) AS supplierName,dtCreationDate,
                  nTotalPrice FROM [dbo].[tbltenderreport] t INNER JOIN [tblTenderAwardedSuppliers] s ON t.[nProcurementID] = [s].[nProcurementID]
                  WHERE [nStatus] IN (109,110)  and nTenderCategory=101                   
 order BY [dtAwardedDate] DESC
    2105              
and dtAwardedDate<getdate() and CONVERT( varchar(10), dtAwardedDate,101)  between  CONVERT( varchar(10), GETDATE()-1,101) and CONVERT( varchar(10), GETDATE(),101)                  
--UPDATE tbltenderreport SET [dtAwardedDate]='2020/05/20 16:32:40.383' WHERE [nTenderID] IN (
--3130)

--tender closing within 24 hrs,1 week & 1month
--SP_VTMS_SearchTenderMain -->TCT for new tenders tender closing within 24 hrs,1 week 

select dtBidSubmissionClosingDate,* from tbltender where nStatus=105 and dtBidSubmissionClosingDate>getdate() and CONVERT( varchar(10), dtBidSubmissionClosingDate,101)  between  CONVERT( varchar(10), GETDATE(),101) and CONVERT( varchar(10), GETDATE()+1,101)

--UPDATE [dbo].[tblTender] SET [dtBidSubmissionClosingDate]='2020/06/20 16:35:00.000' WHERE [nTenderID] IN (64474,64539)