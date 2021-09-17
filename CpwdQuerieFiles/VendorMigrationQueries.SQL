SELECT [s].[sVendorcompanyId],* FROM [dbo].[tblLogin] l
inner JOIN [dbo].[tblSupplier] s ON [s].[nUserID] = [l].[nUserID]
WHERE [nUserType]=104  AND (l.dtCreated BETWEEN GETDATE()-1 AND GETDATE())

SELECT [sVendorcompanyId],* FROM [dbo].[tblSupplier] WHERE  (dtCreated BETWEEN '2021-06-28 10:21:09.960' AND '2021-06-29 10:13:25.457')


SELECT [dtCreated],* FROM [dbo].[tblLogin] WHERE [nUserType]=104  ORDER BY [nUserID] DESC


select count(*) from tblMigrationUserCreationLog where dtCreated >='2021-06-28 00:00:00.000'order by 1 desc


SELECT count(*) as PanNoFROM [dbo].[tblMigrationUserCreationLog] WHERE [sDescription]='PanNo Exists' and dtCreated >='2021-06-28 00:00:00.000' 
SELECT count(*) FROM [dbo].[tblMigrationUserCreationLog] WHERE [sDescription]='Email Exists' and dtCreated >='2021-06-28 00:00:00.000'  
SELECT count(*) FROM [dbo].[tblMigrationUserCreationLog] WHERE [sDescription]='error While Inserting' and  dtCreated >='2021-06-28 00:00:00.000' 
SELECT count(*) FROM [dbo].[tblMigrationUserCreationLog] WHERE [sDescription]='Mobile Exists' and  dtCreated >='2021-06-28 00:00:00.000' 
SELECT count(*) FROM [dbo].[tblMigrationUserCreationLog] WHERE [sDescription]='UserID Exists' and  dtCreated >='2021-06-28 00:00:00.000' 
SELECT count(*) FROM [dbo].[tblMigrationUserCreationLog] WHERE [sDescription]='Exception in ADFS Venodor user Creation' and  dtCreated >='2021-06-28 00:00:00.000' 
SELECT count(*) FROM [dbo].[tblMigrationUserCreationLog] WHERE [sDescription]='Vendor is not inserted due to PAN/TAX ID No is Emp' and  dtCreated >='2021-06-28 00:00:00.000' 
SELECT count(*) FROM [dbo].[tblMigrationUserCreationLog] WHERE [sDescription]='Vendor is not inserted due to Email is Empty At Ro' and  dtCreated >='2021-06-28 00:00:00.000'
SELECT count(*) FROM [dbo].[tblMigrationUserCreationLog] WHERE [sDescription]='Vendor is not inserted due to Mobile No is Empty A' and  dtCreated >='2021-06-28 00:00:00.000'

SELECT * FROM [dbo].[tblMigrationUserCreationLog] WHERE [sDescription] NOT IN ('error While Inserting',
'Email Exists','PanNo Exists','Mobile Exists','UserID Exists','Exception in ADFS Venodor user Creation','Vendor is not inserted due to PAN/TAX ID No is Emp') and  dtCreated >='2021-06-28 00:00:00.000' 


SELECT [s].[sVendorcompanyId],* FROM [dbo].[tblLogin] l
inner JOIN [dbo].[tblSupplier] s ON [s].[nUserID] = [l].[nUserID]
WHERE [nUserType]=104  AND (l.dtCreated BETWEEN GETDATE()-1 AND GETDATE())

SELECT * FROM [dbo].[tblSupplierDocuments] WHERE (dtCreated BETWEEN GETDATE()-1 AND GETDATE())


--DELETE [dbo].[tblSupplierDocuments] WHERE (dtCreated BETWEEN GETDATE()-1 AND GETDATE())

SELECT * FROM [dbo].[tblMigrationUserCreationLog]   ORDER BY [dtCreated] DESC
              
--               TRUNCATE TABLE tblMigrationUserCreationLog

--delete [dbo].[tblSupplier] WHERE  (dtCreated BETWEEN '2021/06/25 10:21:09.960' AND '2021-06-27 10:13:25.457')
--delete [dbo].[tblLogin] WHERE [nUserType]=104  AND (dtCreated BETWEEN '2021/06/25 10:21:09.960' AND '2021-06-27 10:13:25.457')
