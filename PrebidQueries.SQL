SELECT [nPreBidMeeting],[dtPreBidOpeningDate],[preBidClarificationEndDate],[preBidClarificationStartDate],[dtBidSubmissionClosingDate],[receiptQueriesEmail],[sPreBidMeetingLocation],* FROM [dbo].[tblTender]
WHERE [nTenderID] IN (78051)

--UPDATE [dbo].[tblTender] SET [receiptQueriesEmail]='abc@gmail.com' WHERE [nTenderID]=65561
--UPDATE [dbo].[tblTender] SET [preBidClarificationEndDate]=GETDATE()+1 WHERE [nTenderID] IN (78051)

UPDATE [dbo].[tblTender] SET [preBidClarificationEndDate]=GETDATE(),[nPreBidMeeting]=1,[dtPreBidOpeningDate]= GETDATE(),sp
WHERE [nTenderID] IN (76050)

SELECT [nPreBidMeeting],[dtPreBidOpeningDate],[preBidClarificationEndDate],[preBidClarificationStartDate],
[receiptQueriesEmail],* FROM [dbo].[tblTender] ORDER BY [nTenderID] DESC


