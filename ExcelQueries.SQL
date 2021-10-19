SELECT * FROM tblExcelTemplate
SELECT *  FROM tblExcelTemplateMapping

SELECT  nProcurementID,nItemID,nQuantity,sUnitPrice,sTaxesCost,sInputTax,sLandedCost
 FROM [dbo].[tblTenderCommbidP] order BY [nProcurementID] DESC

INSERT INTO [dbo].[tblExcelTemplate] ([sTemplateName], [sTemplateTable])
VALUES
('ProductsTemplate1','tblTenderCommBidP')
-- DELETE [dbo].[tblExcelTemplate] WHERE [nTemplateID]=1003

sp_help tblTenderCommbidP

--DELETE [dbo].[tblTenderCommbidP] WHERE [nProcurementID]=10340
--UPDATE tblExcelTemplateMapping SET [sTableMatchingColumn]='sInputTax' WHERE [nID]=6
--UPDATE tblExcelTemplateMapping SET [sTableMatchingColumn]='nQuantity' WHERE [nID]=2
