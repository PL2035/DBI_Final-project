--Trả về tất cả bài báo có trong bảng
SELECT * FROM Articles
GO
--Trả về các phóng viên quản lý bởi biên tập viên AS2E0001
SELECT Journalists.JName 
FROM Manage INNER JOIN Journalists ON Manage.JID = Journalists.ID
WHERE Manage.EID = 'AS2E0001'
ORDER BY Journalists.ID
--Trả về số phóng viên và biên tập viên trung bình chịu trách nhiệm cho 1 bài báo
SELECT CONVERT(DECIMAL(4,2),CONVERT(DECIMAL,[dbo].[CountAllEditorsAndJournalists]())/(SELECT COUNT(*) FROM Articles)) AS TotalEditorsAndJournalists
--Cần phải insert được tất cả giá trị để có thể thêm một bài viết
BEGIN TRANSACTION
	INSERT INTO Editors VALUES('AS2E0011',N'Hữu Thọ','huuthoo@gmail.com',null)
	INSERT INTO Journalists VALUES('AS2J0011',N'Phạm Dự','dupham@gmail.com',null)
	INSERT INTO Topics VALUES('AS2T0011', N'Pháp Luật')
	INSERT INTO Articles VALUES('AS2A0011', N'Tổng giám đốc Công ty Thiết bị y tế Việt Á bị khởi tố', 
N'Ông Phan Quốc Việt, Chủ tịch HĐQT kiêm Tổng giám đốc Công ty Thiết bị Việt Á, bị khởi tố với cáo buộc nâng khống giá kit xét nghiệm Covid-19.',
'2021-12-18',0,'AS2E0011','AS2T0011','AS2J0011')
COMMIT TRANSACTION
--Trả về các độc giả có tên là Minh
SELECT * FROM Readers WHERE UName LIKE '%Minh'
--Trả về các bài báo được đăng sau ngày 7/12/2021
SELECT * FROM Articles WHERE PostDate > '2021-12-7'
--Trả về 2 bảng nhà báo và bài viết của họ 
SELECT * FROM Journalists LEFT JOIN Articles ON Journalists.ID = Articles.JID
--Trả về lượt xem các bài viết thuộc đề tài Khoa học
SELECT DISTINCT Articles.AID, Articles.Title, Topics.TopicName, COUNT(UView.RID) OVER (PARTITION BY Articles.AID) AS TotalViews
FROM Articles 
INNER JOIN UView ON Articles.AID = UView.AID
INNER JOIN Topics ON Topics.TopicId = Articles.TID
GROUP BY Articles.Title, Articles.AID, UView.RID, Topics.TopicName
HAVING Topics.TopicName = N'Khoa học'
ORDER BY Articles.AID
--Trả về tên các biên tập viên quản lý trên 2 nhà báo
WITH ManagingJournalists(EID, TotalManagement) 
AS (SELECT Manage.EID, COUNT(Manage.JID) OVER (PARTITION BY Manage.EID) 
	FROM Manage
	GROUP BY Manage.EID, Manage.JID)
SELECT DISTINCT Editors.EName FROM Editors INNER JOIN ManagingJournalists ON ManagingJournalists.EID = Editors.ID
WHERE ManagingJournalists.TotalManagement > 2
--Tính số bài báo trung bình của mỗi chủ đề
SELECT CONVERT(DECIMAL(3,2),AVG(CAST(TempTable.TotalArticles AS DECIMAL(5,1)))) AS AverageArticles
FROM (SELECT DISTINCT Topics.TopicId, Topics.TopicName, COUNT(Articles.AID) OVER (PARTITION BY Topics.TopicId) AS TotalArticles
	  FROM Topics INNER JOIN Articles ON TopicId = Articles.TID
	  GROUP BY TopicId, TopicName, Articles.AID) AS TempTable
--Cho thấy hoạt động của bảng ArticlesLog
BEGIN TRANSACTION
	DELETE FROM Articles WHERE Articles.AID = 'AS2A0005'
	SELECT * FROM Articles WHERE Articles.AID = 'AS2A0005'
	SELECT * FROM ArticlesLog
COMMIT TRANSACTION
