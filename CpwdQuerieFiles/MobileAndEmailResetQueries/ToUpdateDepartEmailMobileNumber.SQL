DECLARE @pin_sEmail varchar (100)='udayabhaskar@vupadhi.com'

select COUNT(sEMail) AS sEMailCount from (SELECT sEMail  FROM tblUser WHERE sEMail=@pin_sEmail
union select sEMail AS sEMailCount  FROM tblsupplier s WHERE sEMail=@pin_sEmail) Temp

SELECT *, FROM [dbo].[tblLogin] WHERE [nUserID] IN (select nUserID from (SELECT nUserID  FROM tblUser WHERE sEMail=@pin_sEmail
union SELECT [nUserID] FROM tblsupplier s WHERE sEMail=@pin_sEmail) Temp)

--test@gmail.com
SELECT [sEMail],[sContactNumber],* FROM [dbo].[tblUser] WHERE [nUserID]=331
SELECT * FROM [dbo].[tblUser] WHERE [sContactNumber]='7013601641'
SELECT * FROM [dbo].[tblUser] WHERE [sEMail]='nikhil.a@vupadhi.com'
SELECT * FROM [dbo].[tblUser] WHERE [sEMail]='sandeep.ambekar@vupadhi.com'
SELECT * FROM [dbo].[tblUser] WHERE [sContactNumber]='7013601641'


--karunakar.m@vupadhi.com
--UPDATE [dbo].[tblUser] SET [sEMail]='nikhil.a@vupadhi.com',[sContactNumber]='9440683072'  WHERE [nUserID]=330
--UPDATE [dbo].[tblUser] SET [sEMail]='nikhil.a@vupadhi.com'  WHERE [nUserID]=330
--UPDATE [dbo].[tblUser] SET [sContactNumber]='7013601641'  WHERE [nUserID]=10765
--UPDATE [dbo].[tblUser] SET [sEMail]='karun@vupadhi.com' WHERE [sEMail]='nikhil.a@vupadhi.com'
--UPDATE [dbo].[tblUser] SET [sContactNumber]='1234567865'  WHERE  [sContactNumber]='7013601641'
--UPDATE [dbo].[tblUser] SET [sEMail]='nikhil.a123@vupadhi.com' WHERE [sEMail]='nikhil.a@vupadhi.com'
--UPDATE [dbo].[tblUser] SET [sContactNumber]='1234567890'  WHERE  [sContactNumber]='7013601641'

SELECT * FROM [dbo].[tblLogin] WHERE [sUserName]='TestDept1212'
SELECT * FROM [dbo].[tblLogin] WHERE [nUserID]=1252
--UPDATE [dbo].[tblUser] SET [sCertSerialNo]='6fade49dd3bdf53b13170c4256db9741' WHERE [sCertSerialNo]='6fade49dd3bdf53b13170c4256db9742'
SELECT * FROM [dbo].[tblUser] WHERE [sCertSerialNo]='6fade49dd3bdf53b13170c4256db9741'

--UPDATE [dbo].[tblUser]  SET
--sCertPath=NULL,	sPublicKey='MIIFXzCCBEegAwIBAgIEAOI0gDANBgkqhkiG9w0BAQsFADCBjjELMAkGA1UEBhMCSU4xKjAoBgNVBAoTIWVNdWRocmEgQ29uc3VtZXIgU2VydmljZXMgTGltaXRlZDEdMBsGA1UECxMUQ2VydGlmeWluZyBBdXRob3JpdHkxNDAyBgNVBAMTK2UtTXVkaHJhIFN1YiBDQSBmb3IgQ2xhc3MgMiBJbmRpdmlkdWFsIDIwMTQwHhcNMTcxMjI2MTU0OTI3WhcNMjAxMjI1MTU0OTI3WjCBsjELMAkGA1UEBhMCSU4xETAPBgNVBAoTCFBlcnNvbmFsMQ8wDQYDVQQREwY1NjAxMDMxEjAQBgNVBAgTCUthcm5hdGFrYTFJMEcGA1UEBRNAODFkN2NjNjlkNTdhOGU4ZWNmZjg3MDRmMTNhMWE0NjUwMjYwZjNlYzRhYTI1ZDAzNTU2ZTQ3M2I0ZTAzMzMzZDEgMB4GA1UEAxMXQ2xhc3MgMiBJbmRpdmlkdWFsIHRlc3QwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDDCA+85Vbtrdp8wIldqCOPBqyV3tn8fGsH64bfWDcZ72CtoDuYSrU+lHl+pyg1zsM5u4NX8TVLY+aIev8wtKTJX00nQUDIpuYD++Xak7yrMIUPuXx0CUXoPAf7O7T9hjsRKQcd61WgXrUzu4RWb38O08BiDHB4rX6Ca9rvpgdqTXSF16Qb1bn95y6ETCL+ACQNpilXGI+wlGJNsSJHkVLbsKoi1qRjzwcDTyD19fdRyjxYXfjcM/vjgWQQtO/bXTp81yKjF6VFe3iiSTtSHB53EFzvpPBb0ik9OYlrtvaJ9swZx7d1ScSdsmmaH3WsPPwQz6O0N15CTFMg8gs8ZvSXAgMBAAGjggGdMIIBmTATBgNVHSMEDDAKgAhOaKZ633FW3DAdBgNVHQ4EFgQU1W/CmvbAoOch47p7sAfUnv3GjJUwDgYDVR0PAQH/BAQDAgUgMIGMBgNVHSAEgYQwgYEwLQYGYIJkZAICMCMwIQYIKwYBBQUHAgIwFRoTQ2xhc3MgMiBDZXJ0aWZpY2F0ZTBQBgdggmRkAQgCMEUwQwYIKwYBBQUHAgEWN2h0dHA6Ly93d3cuZS1tdWRocmEuY29tL3JlcG9zaXRvcnkvY3BzL2UtTXVkaHJhX0NQUy5wZGYwewYIKwYBBQUHAQEEbzBtMCQGCCsGAQUFBzABhhhodHRwOi8vb2NzcC5lLW11ZGhyYS5jb20wRQYIKwYBBQUHMAKGOWh0dHA6Ly93d3cuZS1tdWRocmEuY29tL3JlcG9zaXRvcnkvY2FjZXJ0cy9DMklTQ0EyMDE0LmNydDBHBgNVHR8EQDA+MDygOqA4hjZodHRwOi8vd3d3LmUtbXVkaHJhLmNvbS9yZXBvc2l0b3J5L2NybHMvQzJJU0NBMjAxNC5jcmwwDQYJKoZIhvcNAQELBQADggEBAEq7j4rKZe6l7WnUslnvjbyk3gudTBcWBGWfcJ4iKIqUtj911VnxbtI3RmSlf9ZRLVWlE4o3jNVrvuhT9sUIFy2jcbIKn9X3Li23oQBgxUbjgii7JDuWpsrE2q9ZMHZRdx985vHPcsxY3eeSik/7kHMXnkHPitcTCS66qrMz3Jih9eWjTdnzscDyk7ceVUlUf62vFvD+3BUGNLQj3hFeL+YW+l0n8JeS5m3YPdzgA2yDQ9OwghWnD8cXrfYA04PxvE2Yorm7PIZ+qIkarQfzU0CLOMxGLdK1KWzLYcSRtDzAs3Dk4IwbNiW3EkLwUH0KLR8E5hSxOiWFvXtHJeWqES8=',	
--sSubjectDN='Class 2 Individual test'	,sCertSerialNo='e23480',	sCertIssuer='e-Mudhra Sub CA for Class 2 Individual 2014',	dtCertExpiry='2022/01/04 17:01:13.327',	sThumbPrint='6058d2dc17727b87db76c9f54e5ac00cf5c64486'
-- WHERE [nUserID] IN (331)