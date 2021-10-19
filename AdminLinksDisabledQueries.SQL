SELECT * FROM [dbo].[tblAdminLinks] 
WHERE [sLinkUrl] IN ('reassignfile.html')

UPDATE tblAdminLinks SET [sActive]='N' WHERE [sLinkUrl] IN ('AccountSize.html','Enableusers.html','adminLinkss.html',
'privilege.html','Roles.html','BottomLinks.html',
'RolesPriviliges.html','deptRolesPriviliges.html','assignBottomlinktoDept.html',
'approvePreviligestocircle.html','reassignfile.html','ApplicationSettings.html','PackageDetails.html','DepartmentComponent.html',
'transferredUser.html','ContractWorkFlow.html','createIncident.html','getIncident.html','getIncidentReport.html','formulaMeter.html'
,'formulaMasterDtls.html','tenderRestage.html')

UPDATE tblAdminLinks SET [sActive]='N' WHERE [sLinkUrl] IN ('reassignfile.html')


SELECT * FROM [dbo].[tblAdminLinks]  WHERE [linkcode] IS NULL AND [sActive]='Y'

SELECT * FROM [dbo].[tblAdminLinks] WHERE [sLinkUrl] IN (
'CreateDepartmentUser.html',
'DepartmentAdminUsers.html',
'DepartmentAdminRolesPriviliges.html',
'DepartmentAdminRoles.html'
)

UPDATE [dbo].[tblAdminLinks] SET [linkcode]='D' WHERE [sLinkUrl] IN (
'CreateDepartmentUser.html',
'DepartmentAdminUsers.html',
'DepartmentAdminRolesPriviliges.html',
'DepartmentAdminRoles.html'
)
