SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]='se-vupadhi'
SELECT [sContactNumber],[sEMail],[sDesignationEMail],* FROM [dbo].[tblUser] WHERE [nUserID]=331

SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]='testuser2'
SELECT [sContactNumber],[sEMail],[sAdministrationContactNumber],[sAdministrationEMail],* FROM [dbo].[tblSupplier] WHERE [nUserID]=4409


---for dept user mobile and email Reset ------------------------------

UPDATE [dbo].[tblUser] SET [sContactNumber]='' WHERE [nUserID]=331
UPDATE [dbo].[tblUser] SET [sEMail]='' WHERE [nUserID]=331
---for dept user designation email Reset
UPDATE [dbo].[tblUser] SET [sDesignationEMail]='' WHERE [nUserID]=331
----------------------------------------------------------------------


---for supplier mobile and email Reset ------------------------------

UPDATE [dbo].[tblSupplier] SET [sContactNumber]='' WHERE [nUserID]=4409
UPDATE [dbo].[tblSupplier] SET [sEMail]='' WHERE [nUserID]=4409
---for supplier admiministration mobile and email Reset
UPDATE [dbo].[tblSupplier] SET [sAdministrationContactNumber]='' WHERE [nUserID]=4409
UPDATE [dbo].[tblSupplier] SET [sAdministrationEMail]='' WHERE [nUserID]=4409
----------------------------------------------------------------------