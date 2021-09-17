select * from tblEmailAlerts where (dtCreated BETWEEN '2021-07-29 20:25:46.703' AND '2021-07-30 03:46:50.160') and sMessage like'<div style=%'  order by dtCreated desc

select * from tblEmailAlerts where (dtCreated BETWEEN '2021-07-30 10:46:50.160' AND '2021-07-30 10:54:50.160') and sMessage like'<div style=%' order by dtCreated desc
select * from tblDeptErrorLog where (dtCreated BETWEEN '2021-07-30 10:46:50.160' AND '2021-07-30 10:54:50.160') order by dtCreated desc

select * from tblEmailAlerts where dtCreated>'2021-07-30 10:46:50.160' and sMessage like'<div style=%'

select * from tblDeptErrorLog where (dtCreated BETWEEN '2021-07-29 20:25:46.703' AND '2021-07-30 03:46:50.160') order by dtCreated desc