SELECT [nProcurementID],[nTenderID] FROM [dbo].[tblTender] WHERE [nTenderID] IN (67016,67040,67062)

--ipaddress
 SELECT * FROM [dbo].[tblSupplierBid] WHERE [nProcurementID]=11039

--submited bids
SELECT * FROM tblSupplierBid WHERE [nProcurementID] IN (SELECT [nProcurementID] FROM [dbo].[tblTender] WHERE [nTenderID] IN (67016,67040,67062))

--initiated bids
SELECT * FROM tblSupplierBidProfile WHERE [nProcurementID] IN (SELECT [nProcurementID] FROM [dbo].[tblTender] WHERE [nTenderID] IN (67016,67040,67062))

--withdrawn bids
SELECT * FROM tblSupplierNoBid WHERE [nProcurementID] IN (SELECT [nProcurementID] FROM [dbo].[tblTender] WHERE [nTenderID] IN (67016,67040,67062))

