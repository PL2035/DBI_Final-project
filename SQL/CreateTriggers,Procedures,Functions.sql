CREATE NONCLUSTERED INDEX ManageIndex ON dbo.Manage(JID) INCLUDE (EID);
CREATE NONCLUSTERED INDEX ViewIndex ON dbo.UView(RID) INCLUDE (AID);
GO
CREATE TABLE ArticlesLog(
	AID NCHAR(8),
    Title NVARCHAR(500),
    Content NVARCHAR(max) ,
    PostDate DATE
);
GO
CREATE TRIGGER [dbo].[Editor_DefaultPassword] ON [dbo].[Editors]
INSTEAD OF INSERT
AS BEGIN
	DECLARE @password NVARCHAR(12), @defaultPassword NVARCHAR(12)
	SELECT @password = EPassword FROM inserted
	IF @password IS NULL
		BEGIN
			SELECT @defaultPassword = [dbo].[RandomPassword]()
			INSERT INTO Editors(ID,EName,EEmail,EPassword) SELECT ID,EName,EEmail,@defaultPassword AS EPassword FROM inserted
		END
	ELSE 
		INSERT INTO Editors(ID,EName,EEmail,EPassword) SELECT ID,EName,EEmail,EPassword FROM inserted
END
GO
CREATE TRIGGER [dbo].[Journalists_DefaultPassword] ON [dbo].[Journalists]
INSTEAD OF INSERT
AS BEGIN
	DECLARE @password NVARCHAR(12), @defaultPassword NVARCHAR(12)
	SELECT @password = JPassword FROM inserted
	IF @password IS NULL
		BEGIN
			SELECT @defaultPassword = [dbo].[RandomPassword]()
			INSERT INTO Journalists(ID,JName,JEmail,JPassword) SELECT ID,JName,JEmail,@defaultPassword AS JPassword FROM inserted
		END
	ELSE 
		INSERT INTO Journalists(ID,JName,JEmail,JPassword) SELECT ID,JName,JEmail,JPassword FROM inserted
END
GO
CREATE TRIGGER [dbo].[Readers_DefaultPassword] ON [dbo].[Readers]
INSTEAD OF INSERT
AS BEGIN
	DECLARE @password NVARCHAR(12), @defaultPassword NVARCHAR(12)
	SELECT @password = UPassword FROM inserted
	IF @password IS NULL
		BEGIN
			SELECT @defaultPassword = [dbo].[RandomPassword]()
			INSERT INTO Readers(ID,UName,UEmail,UPassword) SELECT ID,UName,UEmail,@defaultPassword AS UPassword FROM inserted
		END
	ELSE 
		INSERT INTO Readers(ID,UName,UEmail,UPassword) SELECT ID,UName,UEmail,UPassword FROM inserted
END
GO
CREATE TRIGGER DisplayUpdate ON Articles 
FOR INSERT,UPDATE,DELETE 
AS BEGIN
	SELECT * FROM inserted
	SELECT * FROM deleted
	INSERT INTO ArticlesLog(AID,Title,Content,PostDate) 
	SELECT d.AID,d.Title,d.Content,d.PostDate from inserted d
END
GO
CREATE PROCEDURE AllWrittenArticles @JName nvarchar(10)
AS
SELECT A.Title
FROM Articles as A 
inner join Journalists as J 
on J.ID = A.JID
WHERE J.JName = @JName;
GO
CREATE FUNCTION CountAllEditorsAndJournalists() RETURNS INT
AS
BEGIN
	DECLARE @returnValue INT, @Editors INT, @Journalists INT
	SELECT @Editors = COUNT(*) FROM Editors
	SELECT @Journalists = COUNT(*) FROM Journalists
	SET @returnValue = @Editors + @Journalists
	RETURN @returnValue
END
GO
CREATE VIEW vw_getRANDValue
AS
SELECT RAND() AS RandValue
GO
CREATE FUNCTION RandomPassword() RETURNS NVARCHAR(12)
AS
BEGIN 
	DECLARE @returnvalue NVARCHAR(12), @Length INT, @CharPool CHAR(70), @PoolLength INT, @LoopCount INT
	SET @Length = (SELECT RandValue FROM vw_getRANDValue)*5 + 8
	SET @CharPool = 'abcdefghijkmnopqrstuvwxyzABCDEFGHIJKLMNPQRSTUVWXYZ23456789.,-_!$@#%^&*'
	SET @PoolLength = Len('abcdefghijkmnopqrstuvwxyzABCDEFGHIJKLMNPQRSTUVWXYZ23456789.,-_!$@#%^&*')
	SET @returnvalue = ''
	SET @LoopCount = 0
	set @returnvalue = SUBSTRING(@CharPool, CONVERT(INT,(SELECT RandValue FROM vw_getRANDValue)*@PoolLength)+1,1)
	WHILE(@LoopCount < @Length)
		BEGIN
			SELECT @returnvalue = @returnvalue + SUBSTRING(@CharPool, CONVERT(INT,(SELECT RandValue FROM vw_getRANDValue)*@PoolLength)+1,1)
			SELECT @LoopCount = @LoopCount + 1
		END
	RETURN @returnvalue
END





