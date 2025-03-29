# <p align="center">BÀI TẬP VỀ NHÀ 03 - MÔN HỆ QUẢN TRỊ CSDL:</p>

# <p align="center">***DEADLINE: 23H59 NGÀY 30/03/2025***</p>

# <p align="center">ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 2)</p>

# BÀI TOÁN: Sửa bài 2 để có csdl như sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#id_dk, @maLopHP,@maSV,DiemThi,PhanTramThi)
  + Diem(#id, @id_dk, diem)

# YÊU CẦU:
1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.
2. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)
3. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.

# HÌNH THỨC LÀM BÀI:
1. Tạo file bai_tap3.md trên cùng repository của bài tập 2:
   Nội dung chứa đề bài, và ảnh chụp quá trình thao tác các yêu cầu khác.
2. Chụp ảnh quá trình sửa bảng DKMH và quá trình thêm bảng Diem, chú ý @ là FK, và thêm CK cho trường điểm
3. Hình sau khi chụp paste trực tiếp vào file bai_tap3.md trên github, cần mô tả các phần trên ảnh để tỏ ra là hiểu hết!
4. dùng tính năng: Tasks -> Generate Scrips => sinh ra file: bai_tap_3_schema.sql  (chỉ chứa lệnh tạo cấu trúc của db)
5. dùng tính năng: Tasks -> Generate Scrips => advance => Check Data only => sinh ra file: bai_tap_3_data.sql  (chỉ chứa dữ liệu đã nhập demo vào db)
6. Tạo diagram mô tả các PK, FK của db. Chụp hình kết quả các bảng có các đường nối 1-->nhiều
7. upload 2 file  bai_tap_3_schema.sql và bai_tap_3_data.sql lên repository.
8. nhớ commit để save nội dung file bai_tap3.md

# ***<p align="center">DEADLINE: 23H59 NGÀY 30/03/2025</p>***

### <p align="center">---------------------- hết bài tập 3-----------------------</p>
# Chú ý:
1. Được phép dùng AI và tham khảo bài của bạn, nhưng phải có sự khác biệt đáng kể.
2. Nghiêm cấm copy, clone. Tham khảo và copy là 2 việc khác hẳn nhau. Thầy có tool để check!
3. Bài làm phải có dấu ấn cá nhân (hãy sáng tạo và biết cách bảo vệ mình nếu bạn là bản chính)
4. Kết quả AI phải phù hợp với yêu cầu, nếu quá sai lệch <=> sv ko đọc => Cấm thi
5. Nên nhớ: cấm thi là ko có vùng cấm và thầy chưa bao giờ nói đùa về việc cấm thi.

# Nhắc lại nội quy học tập:
SV vi phạm 1 trong các lỗi sau chỉ 1 lần sẽ bị cấm thi: 🚫
1. Nghỉ ko lý do chính đáng.
2. Không làm bài tập về nhà.
3. Vắng bài kiểm tra.
4. Nói chuyện tự do trong lớp.

# Bên cạnh đó, sẽ có điểm thưởng 10đ cho sv :  🎁
1. Trả lời đúng câu hỏi trên lớp.
2. Hỏi câu hỏi làm thầy khó trả lời.

### <p align="center">---NHẮC LẠI THỜI HẠN DEADLINE: 23H59 NGÀY 30/03/2025---</p>
# Trình bày bài làm
## 1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.
1. Sửa bảng DKMH theo yêu cầu bài toán
![Ảnh chụp màn hình 2025-03-29 193103](https://github.com/user-attachments/assets/6b05ef66-0b0a-45f7-8d0c-4c0285565a6a)
![Ảnh chụp màn hình 2025-03-29 194335](https://github.com/user-attachments/assets/1311b78b-d253-423a-9d27-d4413a0a99c9)
![Ảnh chụp màn hình 2025-03-29 203230](https://github.com/user-attachments/assets/a4be1f22-1734-47e6-8fbb-61b8fade50df)

2. Tạo bảng Diem 
![Ảnh chụp màn hình 2025-03-29 194345](https://github.com/user-attachments/assets/ebe68053-bd29-4469-9ef4-4890197d5e2c)
![Ảnh chụp màn hình 2025-03-29 194544](https://github.com/user-attachments/assets/94cbe5b4-327a-4103-9f85-be997499afcc)
![Ảnh chụp màn hình 2025-03-29 194615](https://github.com/user-attachments/assets/442d073f-a25f-4672-b5de-2acff40dce9e)
![Ảnh chụp màn hình 2025-03-29 194722](https://github.com/user-attachments/assets/72248692-d782-4f0f-bbe2-3907ec63a599)
![Ảnh chụp màn hình 2025-03-29 194843](https://github.com/user-attachments/assets/d549f64f-7d8f-4315-8972-446d16917956)

## 2. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm).
1. Dữ liệu demo bảng SinhVien
![Ảnh chụp màn hình 2025-03-30 001516](https://github.com/user-attachments/assets/77574f25-c2c0-4c98-8682-e28eb7177ccf)

2. Dữ liệu demo bảng Lop: Đặt Unique cho tenLop để tránh sự trùng lặp.
![Ảnh chụp màn hình 2025-03-29 195502](https://github.com/user-attachments/assets/bd257420-2afe-4f11-adcc-5aa77b6ddce3)
Cảnh báo khi hệ thống phát hiện sự trùng lặp.
![Ảnh chụp màn hình 2025-03-29 195702](https://github.com/user-attachments/assets/2d1094f4-4c21-4c2c-8a2e-8023c9553db9)
![Ảnh chụp màn hình 2025-03-29 195735](https://github.com/user-attachments/assets/116b51db-02e4-4ad1-b185-7b395b1200b3)

3. Dữ liệu demo bảng GVCN
![Ảnh chụp màn hình 2025-03-29 201153](https://github.com/user-attachments/assets/459bf09c-af43-45d0-9ef8-2c7ee67ee4e7)

4. Dữ liệu demo bảng LopSV
![Ảnh chụp màn hình 2025-03-29 201744](https://github.com/user-attachments/assets/24e9ff60-8ce7-4980-b1d0-b612f597d60a)

5. Dữ liệu demo bảng GiaoVien
![Ảnh chụp màn hình 2025-03-29 200923](https://github.com/user-attachments/assets/0e781254-bca3-4631-aa1e-2d42ee55af0a)

6. Dữ liệu demo bảng BoMon
![Ảnh chụp màn hình 2025-03-29 200109](https://github.com/user-attachments/assets/eeb26b07-93b4-4e70-b1f7-84b1cfca38e7)
![Ảnh chụp màn hình 2025-03-30 002709](https://github.com/user-attachments/assets/2d53c362-a368-4b64-a967-fa09c729126c)

7. Dữ liệu demo bảng Khoa
![Ảnh chụp màn hình 2025-03-30 000003](https://github.com/user-attachments/assets/48c00dcf-ffdf-4b15-80a9-d43a5267a074)

8. Dữ liệu demo bảng MonHoc
![Ảnh chụp màn hình 2025-03-29 201859](https://github.com/user-attachments/assets/ecee170b-dc51-419c-b23f-f35ee623be5e)
![Ảnh chụp màn hình 2025-03-29 202205](https://github.com/user-attachments/assets/3c34adf6-9e11-4957-b87e-996b424edd6a)
![Ảnh chụp màn hình 2025-03-29 231939](https://github.com/user-attachments/assets/a7ef332a-2e5c-4ec5-87e6-fa935ad25007)

10. Dữ liệu demo bảng LopHP
![Ảnh chụp màn hình 2025-03-29 202821](https://github.com/user-attachments/assets/836409ec-2d59-4faa-9abb-0d15ff72ae77)

11. Dữ liệu demo bảng DKMH
![Ảnh chụp màn hình 2025-03-30 000034](https://github.com/user-attachments/assets/997443f4-e9c3-41cf-8955-2c6469528b5e)

12. Dữ liệu demo bảng Diem
![Ảnh chụp màn hình 2025-03-29 204745](https://github.com/user-attachments/assets/f4d70a12-340e-429f-b44b-c3226be43c68)

## 3. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.
1. Lệnh truy vấn tính điểm thành phần của 1 sinh viên.
![Ảnh chụp màn hình 2025-03-29 211350](https://github.com/user-attachments/assets/f8debbce-a6da-4ebe-b197-73ca5921442f)
2. Thao tác tạo diagram mô tả các PK, FK của db.
![Ảnh chụp màn hình 2025-03-29 212005](https://github.com/user-attachments/assets/934e41eb-0ab7-4218-9eb4-296d2a479148)
![Ảnh chụp màn hình 2025-03-29 215250](https://github.com/user-attachments/assets/f85dcabf-77cd-4662-87e5-a7cd55c4895b)
![Ảnh chụp màn hình 2025-03-29 220054](https://github.com/user-attachments/assets/755d13eb-3a52-4d5e-a1b2-7171f66fe24c)
# ***<p align="center">THE END</p>***
