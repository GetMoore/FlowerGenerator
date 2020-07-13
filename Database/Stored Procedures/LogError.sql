CREATE PROCEDURE [dbo].[LogError] @UserName Varchar(250), @Message Varchar(250), @Exception Varchar(250)
AS
	
insert into dbo.[Log] ([Date], [UserName], [Message], [Exception]) values
(GETDATE(), @UserName, @Message, @Exception)
