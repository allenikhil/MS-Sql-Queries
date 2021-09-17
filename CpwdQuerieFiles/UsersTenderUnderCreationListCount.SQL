SELECT COUNT([t].[nTenderID]) AS count,[l].[sUserName] FROM [dbo].[tblLogin]  l
INNER JOIN tblTender t ON t.[nCreatedBy]=[l].[nUserID]
WHERE 
[nUserID] IN (SELECT [nCreatedBy] FROM [dbo].[tblTender] WHERE  [t].[nStatus]=101)
GROUP BY [l].[sUserName]