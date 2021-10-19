SELECT [dtPublishedDate],* FROM [dbo].[tblTender] WHERE [nTenderID]=74187
SELECT * FROM tblTenderLtdSuppliers WHERE [nProcurementID] =12287

SELECT * FROM tblDeptLtdSuppliers WHERE [nDepartmentID]=492
SELECT * FROM tblDeptLtdSuppliers WHERE [nSupplierUserID]=1250


SELECT * FROM [dbo].[tblUser]  WHERE [nDepartmentID] IN (307,266,307,331,13
)

SELECT * FROM [dbo].[tblLogin] WHERE [nUserID] IN (1136,
12,
4,
642,
1250
)

SELECT * FROM [dbo].[tblLogin] WHERE [nUserID] IN (331,2371)
--
--UPDATE [dbo].[tblLogin] SET [sCertIssuer]='e-Mudhra Sub CA for Class 2 Gold Individual 2014',[sCertRevoked]='Y',
--[dtLastPwdChange]='2020/05/02 20:04:48.343',[dtCertExpiry]='2021/05/06 14:06:00.000',[dtCertActive]='2016/06/10 11:16:00.000',[sThumbPrint]='49dd8b1e4a774d415127d91a915ab099df4565a6',
--[sOwnerName]='test3 - 27991188' WHERE [nUserID]=2371


--UPDATE [dbo].[tblLogin] SET [sCertIssuer]='N',[sCertRevoked]='N',
--[dtLastPwdChange]=null,[dtCertExpiry]=null,[dtCertActive]=null,[sThumbPrint]=null,
--[sOwnerName]=NULL  WHERE [nUserID]=2371