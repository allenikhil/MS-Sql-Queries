SELECT count(*) FROM [dbo].[tblLogin] WHERE [nUserType]=103 and  (dtCreated BETWEEN '2021-07-03 14:21:09.960' AND '2021-07-04 10:13:25.457')

SELECT * FROM [dbo].[tblLogin] WHERE [nUserType]=103 and  (dtCreated BETWEEN '2021-07-03 14:21:09.960' AND '2021-07-04 10:13:25.457')


SELECT count(*) FROM [dbo].[tblMigrationUserCreationLog] WHERE [sDescription]='Email Exists' and dtCreated >='2021-06-28 00:00:00.000'  
SELECT count(*) FROM [dbo].[tblMigrationUserCreationLog] WHERE [sDescription]='error While Inserting' and  dtCreated >='2021-06-28 00:00:00.000'

------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT count(*) FROM [dbo].[tblLogin] WHERE [nUserType]=103 and  (dtCreated BETWEEN '2021-07-12 10:11:09.960' AND '2021-07-13 10:13:25.457')


SELECT count(*) FROM [dbo].[tblMigrationUserCreationLog] WHERE (dtCreated BETWEEN '2021-07-12 10:11:09.960' AND '2021-07-13 10:13:25.457')

SELECT * FROM [dbo].[tblLogin] WHERE [nUserType]=103 and dtCreated > '2021-07-12 00:00:00.000'
order by dtCreated desc

SELECT * FROM [dbo].[tblMigrationUserCreationLog] WHERE dtCreated > '2021-07-12 00:00:00.000'
order by dtCreated desc


SELECT * FROM [dbo].[tblMigrationUserCreationLog] WHERE (dtCreated BETWEEN '2021-07-12 10:11:09.960' AND '2021-07-13 10:13:25.457')
order by dtCreated desc

select top 100 * from tblDeptErrorLog order by nID desc

SELECT count(*) FROM [dbo].[tblMigrationUserCreationLog] WHERE [sDescription]='Email Exists' and dtCreated >='2021-06-28 00:00:00.000'  
SELECT count(*) FROM [dbo].[tblMigrationUserCreationLog] WHERE [sDescription]='error While Inserting' and  dtCreated >='2021-06-28 00:00:00.000' 