select * from tbltender where ntenderid=25109
select * from tblSupplierPQDocs  where nProcurementID=211

select * from tblSupplierDocuments where nSupplierDocID in( 2043148,2043150)

update tblSupplierDocuments set sDeptHash='6a37c80ce5a26cb2aaf21f85740572c881ef47372d20bbe7ec8c74301c3ce8a7' where nSupplierDocID=2043148
update tblSupplierDocuments set sDeptHash='8a37c80ce5a26cb2aaf21f85740572c881ef47372d20bbe7ec8c74301c3ce8a7' where nSupplierDocID=2043148