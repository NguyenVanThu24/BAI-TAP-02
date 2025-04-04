USE [QLSV]
GO
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'DPO', N'Khoa Cơ Khí')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'ELC', N'Khoa Điện')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'FEE', N'Khoa Điện Tử')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'GKH', N'Khoa Ô TÔ')
GO
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'BM000111', N'Công Nghệ Thông Tin', N'FEE')
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'BM000222', N'Kỹ Thuật Điện', N'ELC')
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'BM000333', N'Cơ Khí Chế Tạo', N'DPO')
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'BM000444', N'Ô Tô', N'GKH')
GO
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'MGV01', N'Dao Tien Giang', CAST(N'1980-01-25' AS Date), N'BM000333')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'MGV02', N'Phung Thi Hien', CAST(N'1990-05-19' AS Date), N'BM000111')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'MGV03', N'Nguyen Thanh Hai', CAST(N'1979-08-10' AS Date), N'Bm000111')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'MGV04', N'Nguyen Dinh Ly', CAST(N'1982-04-17' AS Date), N'BM000222')
GO
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'MM121', N'Hệ Điều Hành', 3)
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'MM122', N'Mạng Máy Tính', 3)
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'MM123', N'Hệ Quản Trị Cơ Sở DL', 3)
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'MM124', N'Lập Trình Python', 3)
GO
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [mamon], [magv]) VALUES (N'HP121', N'Hệ Điều Hành', N'3', N'MM121', N'MGV03')
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [mamon], [magv]) VALUES (N'HP122', N'Mạng Máy Tính', N'3', N'MM122', N'MGV01')
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [mamon], [magv]) VALUES (N'HP123', N'Hệ Quản Trị Cơ Sở DL', N'3', N'MM123', N'MGV02')
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [mamon], [magv]) VALUES (N'HP124', N'Lập Trình Python', N'3', N'MM124', N'MGV04')
GO
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'K225480102111', N'Duong Hai Huy', CAST(N'2004-03-20' AS Date))
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'K225480106061', N'Nguyen Van Thu', CAST(N'2004-06-16' AS Date))
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'K225480106077', N'Hoang Thi Trang', CAST(N'2004-02-19' AS Date))
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'K225480106081', N'Le Tung Duong', CAST(N'2004-09-18' AS Date))
GO
INSERT [dbo].[DKMH] ([maLopHP], [masv], [DiemThi], [PhanTramThi], [id_dk]) VALUES (N'HP121', N'K225480102111', 8, 0.6, N'111')
INSERT [dbo].[DKMH] ([maLopHP], [masv], [DiemThi], [PhanTramThi], [id_dk]) VALUES (N'HP122', N'K225480106061', 7.5, 0.6, N'112')
INSERT [dbo].[DKMH] ([maLopHP], [masv], [DiemThi], [PhanTramThi], [id_dk]) VALUES (N'HP123', N'K225480106077', 7, 0.6, N'113')
INSERT [dbo].[DKMH] ([maLopHP], [masv], [DiemThi], [PhanTramThi], [id_dk]) VALUES (N'HP124', N'K225480106081', 8.5, 0.6, N'114')
INSERT [dbo].[DKMH] ([maLopHP], [masv], [DiemThi], [PhanTramThi], [id_dk]) VALUES (N'HP123', N'K225480106081', 9, 0.6, N'115')
INSERT [dbo].[DKMH] ([maLopHP], [masv], [DiemThi], [PhanTramThi], [id_dk]) VALUES (N'HP123', N'K225480106061', 8.5, 0.6, N'116')
INSERT [dbo].[DKMH] ([maLopHP], [masv], [DiemThi], [PhanTramThi], [id_dk]) VALUES (N'HP121', N'K225480106077', 7, 0.6, N'117')
INSERT [dbo].[DKMH] ([maLopHP], [masv], [DiemThi], [PhanTramThi], [id_dk]) VALUES (N'HP122', N'K225480102111', 8, 0.6, N'118')
GO
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'ML111999', N'K56KTPM')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'ML111555', N'K58KTPM')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'ML111777', N'K59KTPM')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'ML111888', N'K60KTPM')
GO
INSERT [dbo].[LopSV] ([maLop], [masv], [ChucVu]) VALUES (N'ML111555', N'K225480106061', N'Lớp Phó')
INSERT [dbo].[LopSV] ([maLop], [masv], [ChucVu]) VALUES (N'ML111777', N'K225480102111', N'Lớp Trưởng')
INSERT [dbo].[LopSV] ([maLop], [masv], [ChucVu]) VALUES (N'ML111888', N'K225480106077', N'Bí Thư')
INSERT [dbo].[LopSV] ([maLop], [masv], [ChucVu]) VALUES (N'ML111999', N'K225480106081', N'Phó Bí Thư')
GO
INSERT [dbo].[GVCN] ([maLop], [magv], [HK]) VALUES (N'ML111555', N'MGV03', N'3')
INSERT [dbo].[GVCN] ([maLop], [magv], [HK]) VALUES (N'ML111777', N'MGV02', N'3')
INSERT [dbo].[GVCN] ([maLop], [magv], [HK]) VALUES (N'ML111888', N'MGV04', N'3')
INSERT [dbo].[GVCN] ([maLop], [magv], [HK]) VALUES (N'ML111999', N'MGV01', N'3')
GO
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'F1', N'111', 9)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'F10', N'115', 9)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'F2', N'112', 10)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'F3', N'113', 7)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'F4', N'114', 8)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'F5', N'115', 8.5)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'F6', N'116', 8)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'F7', N'117', 7)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'F8', N'118', 9)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'F9', N'112', 7)
GO
