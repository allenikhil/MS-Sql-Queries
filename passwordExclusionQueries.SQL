---FOR Vendor Password Exclusion Start-------------

SELECT * FROM [dbo].[tbllogin] WHERE [sUserName]='cpwdtuser3'

SELECT [sUserName],* FROM [dbo].[tbllogin] WHERE [nUserID]=10631

SELECT [sDesignation],[sFirstName],* FROM [dbo].[tblSupplier] WHERE [nUserID]=10631

SELECT COUNT(*) AS existcount FROM [dbo].[tblLogin] l 
   INNER JOIN [dbo].[tblSupplier] s ON [s].[nUserID] = [l].[nUserID]   
 WHERE [l].[nUserID]=10631 AND ([l].[sUserName] LIKE '%test8%' OR [s].[sDesignation]  LIKE '%test8%' OR [s].[sFirstName]  LIKE '%test8%' OR 'ABCD' LIKE '%test8%')
 
 
 ---FOR Vendor Password Exclusion End-------------


---FOR Dept User Password Exclusion Start-------------

SELECT * FROM [dbo].[tbllogin] WHERE [sUserName]='cpwduser103'

SELECT [sUserName],* FROM [dbo].[tbllogin] WHERE [nUserID]=331

SELECT [sDesignation],[sName],* FROM [dbo].[tblUser] WHERE [nUserID]=331

SELECT COUNT(*) AS existcount FROM [dbo].[tblLogin] l 
        INNER JOIN [dbo].[tblUser] u ON [u].[nUserID] = [l].[nUserID]   
    WHERE [l].[nUserID]=331 AND ([l].[sUserName] LIKE '%Vupa%' OR [u].[sDesignation]  LIKE '%Vupa%' OR [u].[sName]  LIKE '%Vupa%' OR 'ABCD' LIKE '%Vupa%')

---FOR Dept User Password Exclusion End-------------
