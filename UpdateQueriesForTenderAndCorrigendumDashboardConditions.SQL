SELECT * FROM [dbo].[tblTenderDashboard] WHERE [nTenderCategory]=101 AND [nTenderEvalType]=105 
SELECT * FROM [dbo].[tblTenderDashboard] WHERE [sName]='Edit Tender Details'

SELECT * FROM [dbo].[tblTenderDashboard] WHERE [sDescription]='Provision to Edit Tender Details.'


--Upload Tender Documents
UPDATE tbltenderdashboard SET [sDescription]='Provision to add Multiple Documents along with Description Related to Tender.' WHERE [nTenderDashboardID]=66
--Bid Openers
UPDATE tbltenderdashboard SET [sDescription]='Provision to add Bid Openers.' WHERE [nTenderDashboardID]=65
--Edit Tender Details
UPDATE tbltenderdashboard SET [sDescription]='Provision to Edit Tender Details.' WHERE [nTenderDashboardID]=71

--Corrigendum  NIT Documents
UPDATE [dbo].[tblMCorrigendumConditions] SET [sDescription]='Provision to add Multiple Documents along with Description Related to Tender.' WHERE [nID]=2


SELECT * FROM [dbo].[tblMCorrigendumConditions]
