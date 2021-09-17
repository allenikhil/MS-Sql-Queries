DECLARE @pin_ntenderid int=75106
DECLARE @pin_procurementid [int]

SELECT * FROM [dbo].[tblTender] WHERE [nTenderID]=@pin_ntenderid
SELECT @pin_procurementid=[nProcurementID] FROM [dbo].[tblTender] WHERE [nTenderID]=@pin_ntenderid

SELECT dbo.IsTenderOpened(nProcurementID) AS IsTenderOpened,(select count(*) from tblEncKeyDocuments WHERE nProcurementID=T.nProcurementID and bSealed=0 and nStageID=(SELECT top 1 nStageID from tblTenderStages where nProcurementID=T.nProcurementID order by nStageID asc)) AS bNotDecrypted 
,[nTenderID],[nProcurementID]
FROM [dbo].[tblTender] t WHERE [nTenderID] IN (@pin_ntenderid)

SELECT * FROM [dbo].[tblTenderDecrypter] WHERE [nProcurementID]=@pin_procurementid


SELECT top 1 nStageID from tblTenderStages where nProcurementID=@pin_procurementid order by nStageID ASC

select * from tblEncKeyDocuments WHERE nProcurementID=@pin_procurementid and bSealed=0 and nStageID=77586

SELECT * FROM [dbo].[tblLogin] WHERE [nUserID] IN (330
,331,8516
,8517)

SELECT [sEMail],[sPhone],[sContactNumber],* FROM [dbo].[tblUser] WHERE [nUserID] IN (330
,331
)