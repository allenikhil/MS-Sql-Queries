--Bidder dashboard

DECLARE @pin_nsupplieruserid [int] =352
--Tender Participated start
select count(*) AS tenderParticipated from tblsupplierbid SB
inner join tblTender T ON T.nProcurementID=SB.nProcurementID
WHERE nSUpplierUserID=@pin_nsupplieruserid and nTenderCategory in(101,102,104)

select count(*) AS tenderCategoryCount,nTenderCategory from tblsupplierbid SB
inner join tblTender T ON T.nProcurementID=SB.nProcurementID
WHERE nSUpplierUserID=@pin_nsupplieruserid and nTenderCategory in(101,102,104) group BY nTenderCategory
--Tender Participated end   

--Tender awarded start
select count(*) AS tenderAwarded from tblsupplierbid SB
inner join tblTender T ON T.nProcurementID=SB.nProcurementID
WHERE nSUpplierUserID=@pin_nsupplieruserid and nStatus=110 and nTenderCategory IN(101,102,104)

select count(*) AS tenderCategoryCount,nTenderCategory from tblsupplierbid SB
inner join tblTender T ON T.nProcurementID=SB.nProcurementID
WHERE nSUpplierUserID=@pin_nsupplieruserid AND nStatus=110 and nTenderCategory in(101,102,104) group BY nTenderCategory

--Tender awarded end
