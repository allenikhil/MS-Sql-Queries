--online modes
SELECT nPaymentMode,sPaymentName,nSortOrder FROM tblMPaymentModes WHERE nPaymentType=103 AND [nPaymentMode] IN (102,103) and sActive='Y' order by nsortorder ASC

--offline modes
SELECT nPaymentMode,sPaymentName,nSortOrder FROM tblMPaymentModes WHERE nPaymentType=103 AND [nPaymentMode] not IN (102,103) and sActive='Y' order by nsortorder ASC

SELECT * FROM tblMPaymentModes