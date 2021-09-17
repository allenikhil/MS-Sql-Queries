SELECT * FROM [dbo].[tblTender] WHERE nTenderID=72869

SELECT * FROM [dbo].[tblTender] WHERE [nProcurementID]=12039

select * FROM  tblShortfallDocumentsDetails WHERE [nProcurementID]=11964

select * FROM  tblTenderSupplierDocuments WHERE [nProcurementID]=11964

select * FROM  tblSupplierDocuments WHERE nSupplierUserID=352 AND nSupplierDocID IN (53058)
select * FROM  tblSupplierDocuments WHERE nSupplierUserID=4409 AND nSupplierDocID IN (52927,53050)

---shortfall documents saving when bidder upload document
--SP_VTMS_ShortfallDocuments--'SVD'