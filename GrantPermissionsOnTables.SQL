GRANT INSERT ON [dbo].[tblSupplierLog] TO  [tmsadmin]

GRANT INSERT ON [dbo].[tblDepartmentLog] TO  [tmsadmin]

GRANT INSERT ON [dbo].[tblSupplierLog] TO  tmsdept

GRANT select ON [dbo].tblForeFitEmdDetails TO  tmsdept

GRANT SELECT ON tblTenderCommbidP TO [tmsdept]

GRANT UPDATE ON tblEncKeyDocuments_Temp TO tmsdept

GRANT SELECT ON tblReviewSupplierPrivilege TO [tmsdept]

GRANT SELECT ON tblReviewSupplierPrivilegeDocuments TO [tmsdept]

GRANT insert ON tblReviewSupplierPrivilegeDocuments TO [tmsdept]

GRANT EXECUTE ON [cpwd].[SP_VTMS_SupplierBid2] TO [tmsdept]
GRANT EXECUTE ON [cpwd].[SP_VTMS_SupplierBid2] TO [tmsbidder]

GRANT SELECT ON vwsupplierdetails TO [tmsdept]

GRANT INSERT ON  tblMessageChat TO [tmsdept]

GRANT EXECUTE ON [dbo].[getDecryptStageName] TO [tmsdept]

