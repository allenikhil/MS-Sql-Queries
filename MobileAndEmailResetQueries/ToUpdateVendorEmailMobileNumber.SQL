DECLARE @pin_sEmail varchar (100)='nikhil.a@vupadhi.com'

select COUNT(sEMail) AS sEMailCount from (SELECT sEMail  FROM tblUser WHERE sEMail=@pin_sEmail
union select sEMail AS sEMailCount  FROM tblsupplier s WHERE sEMail=@pin_sEmail) Temp

SELECT * FROM [dbo].[tblLogin] WHERE [nUserID] IN (select nUserID from (SELECT nUserID  FROM tblUser WHERE sEMail=@pin_sEmail
union SELECT [nUserID] FROM tblsupplier s WHERE sEMail=@pin_sEmail) Temp)

--chandrakala@vupadhi.com
--7995689626
SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]='testuser2'
SELECT [sContactNumber],* FROM [dbo].[tblSupplier] WHERE [nUserID] IN (SELECT [nUserID] FROM [dbo].[tblLogin] WHERE [sUserName]='testuser2')

SELECT [sContactNumber],[sEMail],* FROM [dbo].[tblSupplier] WHERE [nUserID]=261
SELECT [sContactNumber],* FROM [dbo].[tblSupplier] WHERE [sContactNumber]='9440683072'
SELECT [sContactNumber],* FROM [dbo].[tblSupplier] WHERE [sEMail]=@pin_sEmail
SELECT [sContactNumber],* FROM [dbo].[tblUser] WHERE [sEMail]=@pin_sEmail

SELECT * FROM [dbo].[tblEmailAlerts]



--UPDATE tblSupplier SET [sEMail]='sandeep.ambekar6@vupadhi.com'  WHERE [sEMail]='sandeep.ambekar@vupadhi.com'
--UPDATE tblSupplier SET [sContactNumber]='456878747756' WHERE [sContactNumber]='7013601641'

--UPDATE [dbo].[tblSupplier] SET [sPhone]='9959883344'  WHERE  [sPhone]='7013601641'
--UPDATE [dbo].[tblSupplier] SET [sEMail]='sandeep.ambekar@vupadhi.com',[sContactNumber]='8686616061'  WHERE [nUserID]=10751
--UPDATE [dbo].[tblSupplier] SET [sEMail]='nikhil.a@vupadhi.com'  WHERE [nUserID]=352
--UPDATE [dbo].[tblSupplier] SET [sContactNumber]='7013601641'  WHERE [nUserID]=261
--UPDATE [dbo].[tblSupplier] SET [sEMail]='chandrakala8999@vupadhi.com' WHERE [sEMail]='nikhil.a@vupadhi.com'

--udayabhaskar@vupadhi.com
SELECT [nProcurementID] FROM [dbo].[tblTender] WHERE [nTenderID]=72913

----for Sepecific Tender
SELECT * FROM [dbo].[tblSupplierBidProfile] WHERE [nSupplierUserID]=4409 AND [nProcurementID] IN (
13126,
13127,
13128
)

SELECT sEMail,* FROM [dbo].[tblSupplierBidProfile] WHERE [sEMail]='UDAYABHASKAR@VUPADHI.COM'
SELECT sPhone,* FROM [dbo].[tblSupplierBidProfile] WHERE [sPhone]='9959883344'

--UPDATE [dbo].[tblSupplierBidProfile] SET [sEMail]='allenikhil70@gmail.com' WHERE [nSupplierUserID]=4409 AND [nProcurementID] IN (
--13126,
--13127,
--13128
--)

--UPDATE tblSupplierBidProfile SET [sEMail]='UDAYABHASKAR123@VUPADHI.COM'  WHERE [sEMail]='UDAYABHASKAR@VUPADHI.COM'
--UPDATE tblSupplierBidProfile SET [sPhone]='1234567890' WHERE [sPhone]='9959883344'

---for mail's log
SELECT * FROM [dbo].[tblEmailAlerts] ORDER BY [dtCreated] DESC
--for sms's log
SELECT * FROM [dbo].[tblSMSAlerts] ORDER BY [dtCreated] DESC

--for otp log
SELECT * FROM [dbo].[tblOTPData] ORDER BY [dtCreated] DESC