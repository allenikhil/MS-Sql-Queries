UPDATE [dbo].[tblSupplierDocuments] SET [sPath]=REPLACE(spath,'\appdata\SupplierDocuments\testuser1\','/appdata/SupplierDocuments/testuser1/') WHERE [nSupplierUserID]=352 AND [sPath] LIKE '\appdata\SupplierDocuments\testuser1\%'

SELECT * FROM [dbo].[tblSupplierDocuments] WHERE [nSupplierUserID]=352 AND [sPath] LIKE '\appdata\SupplierDocuments\testuser1%'
SELECT * FROM [dbo].[tblSupplierDocuments] WHERE [nSupplierUserID]=352 AND [sPath] LIKE '/appdata/SupplierDocuments/testuser1/%'

UPDATE [dbo].[tblSupplierDocuments] SET [sPath]=REPLACE(spath,'\appdata\SupplierDocuments\testuser1234\','\appdata\SupplierDocuments\testuser1\') WHERE [nSupplierUserID]=352 AND [sPath] LIKE '\appdata\SupplierDocuments\testuser1234\%'