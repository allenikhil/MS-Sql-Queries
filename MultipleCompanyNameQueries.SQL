SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]='testuser333'
SELECT nSubUserId,[bPrimaryAccount],* FROM [dbo].[tblSupplier] WHERE [nUserID]=8511

SELECT * FROM tblSupplierBankDetails WHERE [nSupplierUserID]=6443
SELECT * FROM tblRegCategoryClassDetails WHERE [nSupplierUserID]=6443

SELECT * FROM [dbo].[tblDuplicatePanNumbers]

--INSERT INTO [dbo].[tblDuplicatePanNumbers] ([sPanNo], [sCompanyName], [sContactNumber], [sCity]) VALUES('ASDGF9870H','test company','9632145780','Hyderabad')


DELETE [dbo].[tblDuplicatePanNumbers] WHERE [sPanNo]='ASDGF9870H'

SELECT TOP 100 * FROM [dbo].[tblDeptErrorLog] ORDER BY [dtCreated] DESC

DECLARE @pin_nuserid [int] =6443

--DELETE tblSupplierBankDetails WHERE [nSupplierUserID]=@pin_nuserid AND [bPrimaryAccount]=0
--DELETE tblRegCategoryClassDetails WHERE [nSupplierUserID]=@pin_nuserid AND [bPrimaryAccount]=0
--DELETE FROM [dbo].[tblSupplier] WHERE [nUserID]=@pin_nuserid AND [bPrimaryAccount]=0
