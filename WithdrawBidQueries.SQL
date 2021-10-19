DECLARE @pin_nTenderID	VARCHAR (50)=77377
DECLARE @pin_sUserName	VARCHAR (50)='testuser333'
DECLARE @pin_nProcurementID	VARCHAR (50)
DECLARE @pin_nSupplierUserID	VARCHAR (50)

SELECT * FROM [dbo].[tblTender] WHERE [nTenderID] IN (@pin_nTenderID)
SELECT @pin_nProcurementID=[nProcurementID] FROM [dbo].[tblTender] WHERE [nTenderID] IN (@pin_nTenderID)

SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]=@pin_sUserName
SELECT @pin_nSupplierUserID=[nUserID] FROM [dbo].[tblLogin] WHERE [sUserName]=@pin_sUserName


SELECT * FROM [dbo].[tblSupplierNoBid] WHERE [nSupplierUserID]=@pin_nSupplierUserID AND [nProcurementID]=@pin_nProcurementID
SELECT * FROM [dbo].[tblSupplierBid] WHERE [nSupplierUserID]=@pin_nSupplierUserID AND [nProcurementID]=@pin_nProcurementID