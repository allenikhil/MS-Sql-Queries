select * FROM [dbo].[tblTender] WHERE [nTenderID]=75869


SELECT * FROM tblTenderRequiredPQDocs WHERE [nProcurementID]=13000 

SELECT * FROM tblTenderRequiredPQDocs WHERE [nProcurementID] IN 
(select [dbo].[tblTender].[nProcurementID] FROM [dbo].[tblTender] WHERE [nTenderID]=75869)


SELECT * FROM tblTenderRequiredPQDocsScore



