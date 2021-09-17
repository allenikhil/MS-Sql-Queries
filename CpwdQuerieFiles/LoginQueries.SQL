SELECT * FROM [dbo].[tblLogin] WHERE [sUserName] IN ('admin','se-bkpt','se-vupadhi')

SELECT [sContactNumber],* FROM [dbo].[tblUser] WHERE [nUserID]=7

UPDATE [dbo].[tblUser] SET [sContactNumber]=7015601642 WHERE [nUserID]=7

SELECT  [nCreatedUserID],* FROM [dbo].[tblTender] WHERE [nCreatedUserID]=1252
