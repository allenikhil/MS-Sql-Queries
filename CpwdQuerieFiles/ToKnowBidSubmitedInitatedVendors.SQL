DECLARE @pin_ntenid [int]=76169;
DECLARE @pin_nprcid [int];

SELECT [nStatus],* FROM [dbo].[tblTender] WHERE [nTenderID]=@pin_ntenid
SELECT @pin_nprcid=[nProcurementID] FROM [dbo].[tblTender] WHERE [nTenderID]=@pin_ntenid

--submited bids
SELECT * FROM [dbo].[tblSupplierBid] WHERE [nProcurementID]=@pin_nprcid

--Intiated and submited bids
SELECT dbo.[GetUserName]([nSupplierUserID]) AS nUser_Name,* FROM [dbo].[tblSupplierBidProfile] WHERE [nProcurementID]=@pin_nprcid


--SELECT * FROM [dbo].[tblDeptErrorLog] ORDER BY [dtCreated] DESC

