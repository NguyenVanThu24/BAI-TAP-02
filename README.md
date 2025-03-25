# BAI-TAP-02.

# Bài tập 02 của sinh viên: K225480106062 - Nguyễn Văn Thứ - Môn Hệ quản trị CSDL.

# BÀI TẬP VỀ NHÀ 02 - MÔN HỆ QUẢN TRỊ CSDL:

***DEADLINE: 23H59 NGÀY 25/03/2025***

## ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 1)
1. Đã cài đặt SQL Server 2022 Dev.
2. Đã cài đặt SQL Managerment Studio bản mới nhất.
3. Đã kết nối từ SQL Managerment Studio vào SQL Server.
4. Đã có tài khoản github, biết cách tạo repository(kho lưu trữ) cho phép truy cập public.

## BÀI TOÁN:
- Tạo csdl quan hệ với tên QLSV gồm các bảng sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi)

## YÊU CẦU:
1. Thực hiện các hành động sau trên giao diện đồ hoạ để tạo cơ sở dữ liệu cho bài toán:
  + Tạo database mới, mô tả các tham số(nếu có) trong quá trình.
  + Tạo các bảng dữ liệu với các trường như mô tả, chọn kiểu dữ liệu phù hợp với thực tế (tự tìm hiểu)
  + Mỗi bảng cần thiết lập PK, FK(s) và CK(s) nếu cần thiết. (chú ý dấu # và @: # là chỉ PK, @ chỉ FK)
2. Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương. lưu tất cả các lệnh SQL trong file: Script_DML.sql


## HÌNH THỨC LÀM BÀI:
1. Tạo repository mới, tạo file readme.md (có hướng dẫn trên zalo group)
2. Sinh viên thao tác trên máy tính cá nhân, chụp màn hình quá trình làm, chỉ cần chụp active window, thi thoảng chụp full màn hình để thấy sự cá nhân hoá.
3. Hình sau khi chụp paste trực tiếp vào file readme trên github, cần mô tả các phần trên ảnh để tỏ ra là hiểu hết!
4. upload các file liên quan: Script_DML.sql
5. Update link của repository vào cột bài tập 2 trên file excel online của thầy (đã ghim link trên zalo group)

## Chú ý:
1. Được phép dùng AI và tham khảo bài của bạn, nhưng phải có sự khác biệt đáng kể.
2. Nghiêm cấm copy, clone. Tham khảo và copy là 2 việc khác hẳn nhau. Thầy có tool để check!
3. Bài làm phải có dấu ấn cá nhân (hãy sáng tạo và biết cách bảo vệ mình nếu bạn là bản chính)
4. Kết quả AI phải phù hợp với yêu cầu, nếu quá sai lệch <=> sv ko đọc => Cấm thi
5. Nên nhớ: cấm thi là ko có vùng cấm và thầy chưa bao giờ nói đùa về việc cấm thi.

_____

# Bài Làm

### Quá trình tạo New Database: Click chuột phải vào Databases -> Click vào New Database -> Thực hiện các thao tác như đặt tên, chọn nơi lưu file và chọn OK dể hoàn tất quá trình tạo Database.
![image](https://github.com/user-attachments/assets/dd826aed-e2f9-47bf-9cca-c0c458323db8)

### Quá trình tạo bảng dữ liệu với các trường đã cho: Click chuột phải vào Table và chọn New tiếp theo và chọn Table.
![image](https://github.com/user-attachments/assets/0d98fc73-69b5-4c5a-842f-ea8ac5d1ea65)

### Thao tác tạo bảng dữ liệu: SinhVien(#masv,hoten,NgaySinh). 
1. Bằng cách nhập các trường dữ liệu vào Column Name -> lữa chọn kiểu Data Type -> cuối cùng là lựa chọn tích Allow Nulls để tạo được bảng hoàn chỉnh như hình sau.
![image](https://github.com/user-attachments/assets/b532dc98-8c5d-43a0-a052-d14dd4047b98)
2. Sau khi hoàn thiện quá trình thiết lập bảng thì bấm tổ hợp phím Ctrl+S để đặt tên cho bảng vừa tạo, ở đây là bảng SinhVien và hoàn tất việc lưu lại bảng đó trong Database.
![image](https://github.com/user-attachments/assets/c995a820-6341-4935-8c5a-cb0414b09dc8)
3. Tiếp theo Click chuột phải vào trường muốn chọn làm khóa chính PK cho bảng dữ liệu, rồi Click Set Primary Key như hình để thiết lập PK cho bảng.
![image](https://github.com/user-attachments/assets/db8feb81-6c15-4754-bdc8-01428ec832fe)
4. Sau đó Click chuột phải vào khoảng trắng trong bảng Click chọn Check Constrant để tạo CK cho bảng SinhVien. Trong bảng SinhVien em đặt NgaySinh làm CK và các nội dung được mô tả chi tiết như trong hình sau đây.
![image](https://github.com/user-attachments/assets/ab5d1793-cde9-4e86-8ae2-dd3c16668331)
![image](https://github.com/user-attachments/assets/654440f8-24f6-4a03-9f3d-85abfadf078d)
![image](https://github.com/user-attachments/assets/61ecd3cd-5bf7-423a-a88b-1fd7c76d62e5)
5. Sau khi thiết lập thành công CK, thì thử nhập dữ liệu cho bảng SinhVien để kiểm tra nếu không vi phạm điều kiện CK thì quá trình diễn ra bình thường ngược lại nếu vi phạm CK thì hiển thị cảnh báo như hình ngay lập tức.
![Ảnh chụp màn hình 2025-03-25 162907](https://github.com/user-attachments/assets/8f4c64ce-86ca-4a5b-9437-c997c7e79398)


## Thao tác tạo bảng dữ liệu: Lop(#maLop,tenLop).

## Thao tác tạo bảng dữ liệu: GVCN(#@maLop,#@magv,#HK)

## Thao tác tạo bảng dữ liệu: LopSV(#@maLop,#@maSV,ChucVu)

## Thao tác tạo bảng dữ liệu: GiaoVien(#magv,hoten,NgaySinh,@maBM)

## Thao tác tạo bảng dữ liệu: BoMon(#MaBM,tenBM,@maKhoa)

## Thao tác tạo bảng dữ liệu: Khoa(#maKhoa,tenKhoa)

## Thao tác tạo bảng dữ liệu: MonHoc(#mamon,Tenmon,STC)

## Thao tác tạo bảng dữ liệu: LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)

## Thao tác tạo bảng dữ liệu: DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi)

## 
