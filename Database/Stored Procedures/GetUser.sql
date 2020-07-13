CREATE PROCEDURE [dbo].[GetUser] @UserName Varchar(250), @Password Varchar(250)
AS

select u.Id, p.[Name], p.EmailAddress, p.PhoneNumber
from dbo.[User] u
inner join dbo.[Person] p on p.Id = u.Id
	
