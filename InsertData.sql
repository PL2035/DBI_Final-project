--Insert editors
INSERT INTO Editors VALUES('AS2E0001',N'Mr.Lee','mrlee@gmail.com',null)
INSERT INTO Editors VALUES('AS2E0002',N'Huỳnh Lam','huynhlam@gmail.com',null)
INSERT INTO Editors VALUES('AS2E0003',N'Nhất Phương','nhatphuong@gmail.com','&6193)11')
INSERT INTO Editors VALUES('AS2E0004',N'Quỳnh Như','quynhnhu@gmail.com',null)
INSERT INTO Editors VALUES('AS2E0005',N'Minh Thư','mthu@gmail.com',null)
INSERT INTO Editors VALUES('AS2E0006',N'Tuấn Minh','tuanminh@gmail.com',null)
INSERT INTO Editors VALUES('AS2E0007',N'Minh Quân','mquan@gmail.com',null)
INSERT INTO Editors VALUES('AS2E0008',N'Tú My','metoo@gmail.com',null)
INSERT INTO Editors VALUES('AS2E0009',N'Đình Nguyên','ddnguyen@gmail.com',null)
INSERT INTO Editors VALUES('AS2E0010',N'Minh Hoàng','minhhoang@gmail.com',null)
select * from Journalists
--Insert journalists
INSERT INTO Journalists VALUES('AS2J0001',N'Mr.Lee','mrlee@gmail.com',null)
INSERT INTO Journalists VALUES('AS2J0002',N'Xinhua','xinhua@gmail.com',null)
INSERT INTO Journalists VALUES('AS2J0003',N'Hồng Duy','hongduy@gmail.com',null)
INSERT INTO Journalists VALUES('AS2J0004',N'Hoàng Thùy','hoangthuy@gmail.com',null)
INSERT INTO Journalists VALUES('AS2J0005',N'An Khang','ankhang@gmail.com',null)
INSERT INTO Journalists VALUES('AS2J0006',N'Tam Kỳ','tamky@gmail.com',null)
INSERT INTO Journalists VALUES('AS2J0007',N'Lê Hoàng','hoangle@gmail.com',null)
INSERT INTO Journalists VALUES('AS2J0008',N'Thục Linh','thuclinh@gmail.com',null)
INSERT INTO Journalists VALUES('AS2J0009',N'Lê Nga','lenga@gmail.com',null)
INSERT INTO Journalists VALUES('AS2J0010',N'Thanh Lam','thanhlam@gmail.com',null)
--Insert topics
INSERT INTO Topics VALUES('AS2T0001', N'Giao Thông')
INSERT INTO Topics VALUES('AS2T0002', N'Khoa học')
INSERT INTO Topics VALUES('AS2T0003', N'Thể thao')
INSERT INTO Topics VALUES('AS2T0004', N'Chính trị')
INSERT INTO Topics VALUES('AS2T0005', N'Phim')
INSERT INTO Topics VALUES('AS2T0006', N'Sức khỏe')
INSERT INTO Topics VALUES('AS2T0007', N'Y tế')
INSERT INTO Topics VALUES('AS2T0008', N'Showbiz')
INSERT INTO Topics VALUES('AS2T0009', N'Game')
INSERT INTO Topics VALUES('AS2T0010', N'Tâm sự')
--Insert articles
INSERT INTO Articles VALUES('AS2A0001', N'Việt Nam khôi phục đường bay quốc tế từ tháng 1/2022', 
N'Chính phủ đồng ý kế hoạch khôi phục các chuyến bay quốc tế thường lệ chở khách với địa bàn có hệ số an toàn cao, bắt đầu từ 1/1/2022.  Văn phòng Chính phủ thông báo chỉ đạo nêu trên của Phó thủ tướng Phạm Bình Minh, tối 10/12.  Theo đó, Việt Nam đang thực hiện chiến lược thích ứng an toàn. Việc mở lại các chuyến bay quốc tế theo kế hoạch của Bộ Giao thông Vận tải "là cần thiết nhưng vẫn phải đảm bảo kiểm soát hiệu quả dịch bệnh"',
'2021-12-10',0,'AS2E0001','AS2T0001','AS2J0001')
INSERT INTO Articles VALUES('AS2A0002', N'Xe buýt tự lái thử nghiệm chở khách', 
N'Mẫu xe buýt tự hành Robobus do tập đoàn công nghệ Baidu phát triển đã bắt đầu vận thành thương mại thử nghiệm ở Trùng Khánh.',
'2021-12-06',0,'AS2E0001','AS2T0002','AS2J0002')
INSERT INTO Articles VALUES('AS2A0003', N'Messi, Ronaldo dễ đối đầu ở vòng 1/8 Champions League', 
N'Theo tính toán của một chuyên gia thống kê, PSG là đối thủ tiềm năng thứ hai của Man Utd ở vòng knock-out Champions League.  Fran Martinez là chuyên gia thống kê - số liệu của La Liga. Dựa trên các dữ kiện do anh tự thu thập, chuyên gia người Tây Ban Nha này vừa đưa ra dự đoán về xác suất diễn ra các cặp đấu ở vòng 1/8 Champions League.  Theo đó, Man Utd có khả năng đụng Atletico hoặc Inter cao nhất ở vòng knock-out Champions League, với 18,57%. Đối thủ tiềm năng tiếp theo của thầy trò Ralf Rangnick là PSG, với 17,82%. Xếp sau lần lượt là RB Salzburg (15,21%), Sporting và Benfica (cùng 14,91%).',
'2021-12-06',0,'AS2E0002','AS2T0003','AS2J0003')
INSERT INTO Articles VALUES('AS2A0004', N'Không dùng ngân sách nhà nước bắn pháo hoa mừng năm mới', 
N'Ban Bí thư yêu cầu lãnh đạo địa phương căn cứ tình hình cụ thể, cân nhắc thận trọng việc tổ chức bắn pháo hoa chào mừng năm mới 2022 và Tết Nguyên đán.  Theo chỉ thị vừa được Thường trực Ban Bí thư Võ Văn Thưởng ký ban hành, việc tổ chức bắn pháo hoa chào mừng năm mới phải được quyết định trên cơ sở bảo đảm tiết kiệm, an toàn, không sử dụng ngân sách nhà nước.',
'2021-12-10',1,'AS2E0002','AS2T0004','AS2J0004')
INSERT INTO Articles VALUES('AS2A0005', N'Một đại tướng, 5 thượng tướng quân đội nghỉ hưu', 
N'Đại tướng Đỗ Bá Tỵ; thượng tướng Nguyễn Chí Vịnh, Trần Đơn, Bế Xuân Trường, Lê Chiêm, Nguyễn Phương Nam nhận quyết định nghỉ hưu, chiều 7/12.',
'2021-12-07',2,'AS2E0003','AS2T0004','AS2J0004')
INSERT INTO Articles VALUES('AS2A0006', N'Kẹo cao su giúp giảm lây nhiễm nCoV', 
N'MỸ - Các nhà nghiên cứu phát triển loại kẹo cao su chứa protein thực vật đóng vai trò “bẫy” nCoV, giúp giảm tải lượng virus trong nước bọt và ngăn nguy cơ lây nhiễm.',
'2021-12-04',1,'AS2E0001','AS2T0002','AS2J0005')
INSERT INTO Articles VALUES('AS2A0007', N'"Bố già" của Trấn Thành tranh giải Oscar', 
N'"Bố già" - phim điện ảnh hơn 400 tỷ đồng của Trấn Thành - tranh giải "Phim quốc tế xuất sắc" tại Oscar lần thứ 94.  Ngày 7/12, ông Vi Kiến Thành - Cục trưởng Điện ảnh - cho biết Bộ Văn hóa, Thể thao và Du lịch thành lập hội đồng đề cử phim đi dự Oscar 2022, Bố già (tựa tiếng Anh là Dad, I''m sorry) đạt điểm cao nhất.',
'2021-12-07',2,'AS2E0003','AS2T0005','AS2J0005')
INSERT INTO Articles VALUES('AS2A0008', N'Cao tốc hơn 12.000 tỷ đồng thành hình', 
N'THANH HÓA - Cao tốc Mai Sơn - quốc lộ 45 dài hơn 63 km đi qua hai tỉnh Ninh Bình và Thanh Hoá, đã thành hình sau hơn một năm thi công.',
'2021-12-11',1,'AS2E0004','AS2T0001','AS2J0007')
INSERT INTO Articles VALUES('AS2A0009', N'Cách ngăn ngừa lây nhiễm chủng Omicron', 
N'Cách đầu tiên là tiêm hai liều vaccine và tiêm tăng cường nếu đủ điều kiện. Đây là phương pháp kích hoạt kháng thể chống lại virus. Ngay cả khi kháng thể không còn hiệu quả với Omicron, chúng vẫn giúp ngăn ngừa các biến chủng khác.  Người dân cần đeo khẩu trang đầy đủ, tránh tụ tập đông người và cải thiện hệ thống thông gió. Tại Mỹ, Trung tâm Kiểm soát và Phòng ngừa Dịch bệnh (CDC) tiếp tục khuyến nghị đeo khẩu trang tại nơi công cộng và khu vực có nguy cơ lây nhiễm cộng đồng cao, bất kể tình trạng tiêm chủng.',
'2021-12-11',1,'AS2E0003','AS2T0006','AS2J0008')
INSERT INTO Articles VALUES('AS2A0010', N'"Bắt" bệnh ung thư từ xa', 
N'HÀ NỘI - Bệnh nhân nữ, 61 tuổi, ở Lào Cai, mắc hai loại ung thư, xuất hiện nốt nhỏ ở phổi chưa rõ di căn hay không, được bác sĩ Bệnh viện K khám từ xa.
Bệnh nhân khám tại Bệnh viện Đa khoa Lào Cai vì đau đầu, ù tai, tê bì nửa mặt phải. Bà có tiền sử phẫu thuật ung thư vú phải và điều trị hóa chất tại Bệnh viện K vài năm trước. Ê kíp khám không thấy bất thường ở ngực, tuy nhiên vùng vòm họng và phổi bệnh nhân có một khối kích thước nhỏ.',
'2021-12-11',2,'AS2E0004','AS2T0006','AS2J0009')
GO
--Insert managing
INSERT INTO Manage 
SELECT MergedTable.AID, MergedTable.JID FROM 
(SELECT Editors.ID AS AID, Journalists.ID AS JID, ROW_NUMBER() OVER (PARTITION BY Editors.ID, Journalists.ID ORDER BY Editors.ID) AS ManageCount FROM 
Articles INNER JOIN Editors ON Editors.ID = Articles.EID
INNER JOIN Journalists ON Journalists.ID = Articles.JID) as MergedTable
WHERE ManageCount = 1
GO 
--Insert readers
INSERT INTO Readers VALUES('AS2R0001',N'Phương Lê','#204@274','phuongle@gmail.com')
INSERT INTO Readers VALUES('AS2R0002',N'Lê Minh',null,'minhle@gmail.com')
INSERT INTO Readers VALUES('AS2R0003',N'Minh Hoàng',null,'hoang357@gmail.com')
INSERT INTO Readers VALUES('AS2R0004',N'Khang Hoàng','#374@25%','khaqquang@gmail.com')
INSERT INTO Readers VALUES('AS2R0005',N'Phong Lan',')P!@@274','phln1990@gmail.com')
INSERT INTO Readers VALUES('AS2R0006',N'Hoàng Phong',null,'phonghoang@gmail.com')
INSERT INTO Readers VALUES('AS2R0007',N'Minh Nhật','*2#4@^^4','nhatnguyen@gmail.com')
INSERT INTO Readers VALUES('AS2R0008',N'Thành Công','!19*@6$5','nguyencong@gmail.com')
INSERT INTO Readers VALUES('AS2R0009',N'Thanh Minh',null,'minhtran@gmail.com')
INSERT INTO Readers VALUES('AS2R0010',N'Nhật Lam','#!P4@O*P','lam203@gmail.com')
GO
INSERT INTO UView VALUES('AS2A0002','AS2R0001')
INSERT INTO UView VALUES('AS2A0004','AS2R0006')
INSERT INTO UView VALUES('AS2A0002','AS2R0002')
INSERT INTO UView VALUES('AS2A0008','AS2R0001')
INSERT INTO UView VALUES('AS2A0002','AS2R0007')
INSERT INTO UView VALUES('AS2A0010','AS2R0002')
INSERT INTO UView VALUES('AS2A0003','AS2R0005')
INSERT INTO UView VALUES('AS2A0006','AS2R0005')
INSERT INTO UView VALUES('AS2A0001','AS2R0009')
INSERT INTO UView VALUES('AS2A0008','AS2R0010')
INSERT INTO UView VALUES('AS2A0009','AS2R0007')
INSERT INTO UView VALUES('AS2A0003','AS2R0003')

