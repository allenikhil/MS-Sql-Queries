DECLARE @pin_ntenid [int]=72669;
DECLARE @pin_nprcid [int];
DECLARE @pin_supplierid [int]=4409;

SELECT [nStatus],* FROM [dbo].[tblTender] WHERE [nTenderID]=@pin_ntenid
SELECT @pin_nprcid=[nProcurementID] FROM [dbo].[tblTender] WHERE [nTenderID]=@pin_ntenid


   SELECT nPaymentType,CASE nPaymentMode 
		WHEN 101 then 'Exempted'
		WHEN 102 then 'Online Payment'
		WHEN 103 then 'Challan'
		WHEN 104 THEN 'Bank Gaurantee'
        WHEN 105 THEN 'DD'
        WHEN 107 THEN 'FDR'
        WHEN 108 THEN 'CDR'
        WHEN 110 THEN 'BC'
        WHEN 111 THEN 'TC'
		ELSE '' 
    END  nPaymentMode
,
CASE nPaymentGatewayType 
		WHEN 101 then 'ICICI Bank'
		WHEN 102 then 'Axis Bank'
		WHEN 103 THEN 'HDFC Bank'
        WHEN 104 THEN 'SBI Bank'
		WHEN 105 THEN 'AXIS CARDS'
		WHEN 106 THEN 'Axis Bank'
    END  nPaymentGatewayType
,
nPaymentID,sResponseCode,sTransactionID,sInfavourOf,nAmount,sChallanNo,sBankName,dtCreated,nBankID,sRemarksExempted,
CASE nPaymentMode 
		WHEN 101 then sBGFileName				
		WHEN 104 THEN sBGFileName  
        WHEN 105 THEN sBGFileName 
        WHEN 107 THEN sBGFileName
        WHEN 108 THEN sBGFileName 
        WHEN 110 THEN sBGFileName 
        WHEN 111 THEN sBGFileName  
		ELSE '' 
    END  sBGFileName,CASE nPaymentMode 
		WHEN 101 then sBGFilePath		
		WHEN 104 THEN sBGFilePath 
        WHEN 105 THEN sBGFilePath 
        WHEN 107 THEN sBGFilePath 
        WHEN 108 THEN sBGFilePath 
        WHEN 110 THEN sBGFilePath 
        WHEN 111 THEN sBGFilePath 
		ELSE '' 
    END  sBGFilePath
	FROM	tblOnlinePayment
	WHERE	nProcurementID = @pin_nprcid
	AND		nSupplierUserID = @pin_supplierid
AND sMessage='success'