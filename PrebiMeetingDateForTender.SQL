SELECT * FROM [dbo].[tblDeptErrorLog] ORDER BY [dtCreated] DESC

SELECT [mEstimatedCost],[dtPreBidOpeningDate],* FROM [dbo].[tblTender]
 WHERE [nTenderID]=72798
 
-- UPDATE [dbo].[tblTender] SET  mEstimatedCost='0' WHERE [nTenderID]=72801

SELECT [nTenderID],[nPreBidMeeting],(CASE WHEN T.[dtPreBidOpeningDate] < GETDATE() THEN 1 ELSE 0 END) AS nPBidIconStaus,[receiptQueriesEmail],[dtPreBidClosingDate],[dtPreBidOpeningDate] FROM tbltender t 

WHERE [nTenderID] IN (
69466,
70468,
70481,
70494,
72631
)