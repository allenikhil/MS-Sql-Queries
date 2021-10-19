SELECT [dtCertExpiry],* FROM [dbo].[tblLogin]
where [dtCertExpiry] between GETDATE() and GETDATE()+30