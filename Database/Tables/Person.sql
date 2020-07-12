CREATE TABLE [dbo].[Person]
(
	[Id]			INT IDENTITY	NOT NULL,
	[Name]			VARCHAR(250)	NOT NULL,
	[PaymentOption] INT				NULL,
	[EmailAddress]	VARCHAR(250)	NULL,
	[PhoneNumber]	VARCHAR(250)	NULL,
	[RecruitedBy]	INT				NULL
	CONSTRAINT PK_Person PRIMARY KEY CLUSTERED ([Id]),
	FOREIGN KEY ([RecruitedBy]) REFERENCES Person([Id]),
	FOREIGN KEY ([PaymentOption]) REFERENCES [PaymentOption]([Id])
)
