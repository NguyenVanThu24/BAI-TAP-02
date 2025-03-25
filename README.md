# Bài tập 02 của sinh viên: K225480106062 - Nguyễn Văn Thứ - Môn Hệ quản trị CSDL.

# BÀI TẬP VỀ NHÀ 02 - MÔN HỆ QUẢN TRỊ CSDL:

# ***DEADLINE: 23H59 NGÀY 25/03/2025***

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

## ***Đối với các bảng còn lại trong Database thì các thao tác thực hiện tương tự như trên, dưới đây em xin phép chụp lại kết quả từng quá trình của các bảng còn lại mà không mô tả chi tiếp nữa.***

### Thao tác tạo bảng dữ liệu: Lop(#maLop,tenLop).
1. Thao tác tạo khóa chính cho bảng dữ liệu Lop.
![Ảnh chụp màn hình 2025-03-25 164102](https://github.com/user-attachments/assets/660adfb0-a898-4eb7-a2d8-eb8ccbbe83f6)
2. Tiếp theo là lưu bảng với tên Lop như hình.
![Ảnh chụp màn hình 2025-03-25 164126](https://github.com/user-attachments/assets/81eea12c-65f3-4b10-bc2d-fbf0d448f2e0)

### Thao tác tạo bảng dữ liệu: GVCN(#@maLop,#@magv,#HK)
1. Thao tác tạo khóa chính cho bảng dữ liệu GVCN. Tại bảng này chứa nhiều khóa chính vì vậy thao tác chọn khóa chính diễn ra phức tạp hơn bằng cách dùng tổ hợp phím Ctrl+Click chuột vào các trường làm khóa và chọn Set Primary Key.
![GVCN (2)](https://github.com/user-attachments/assets/b27baf5c-5446-408b-83bf-636a6d54ac84)
2. Tiếp theo là lưu bảng với tên GVCN như hình.
![GVCN (1)](https://github.com/user-attachments/assets/d5319ed0-26ae-476c-b373-32a489a6bbd4)
3. Thao tác thực hiện FK: Click chuột phải chọn Relationships tại khoảng trắng của bảng và thực hiện các thao tác như trong phần mô tả của hình vẽ sau đây.
![reGVCN](https://github.com/user-attachments/assets/43ac7132-f703-48bd-b22b-da649ac858f8)
![reGVCN (2)](https://github.com/user-attachments/assets/baf8fea2-b2b6-4c11-8c3a-84dce1b25a06)
![reGVCN (4)](https://github.com/user-attachments/assets/70bd1287-eb25-44e9-9a99-ccd7e64676c3)
![reGVCN (3)](https://github.com/user-attachments/assets/f0845290-6985-4f6e-8b37-b19708d84a73)
![reGVCN (1)](https://github.com/user-attachments/assets/51e20790-28f7-4bd1-b39d-03df44f382a3)

### Thao tác tạo bảng dữ liệu: LopSV(#@maLop,#@maSV,ChucVu)
1. Thao tác tạo khóa chính cho bảng dữ liệu LopSV.
![LopSV (1)](https://github.com/user-attachments/assets/e2d25206-a007-4ae3-87a7-5ee1da31c51a)
2. Tiếp theo là lưu bảng với tên LopSV như hình.
![LopSV (2)](https://github.com/user-attachments/assets/66163715-6dfd-4f9c-9128-cc2fc68ff71b)
3. Thao tác thực hiện FK: Click chuột phải chọn Relationships tại khoảng trắng của bảng và thực hiện các thao tác như trên bảng GVCN.
![reLopSV (4)](https://github.com/user-attachments/assets/f0a33a1f-a194-467e-a6c4-7278fb2dac52)
![reLopSV (3)](https://github.com/user-attachments/assets/f06bd18d-fe28-49a6-9767-3abced42c315)
![reLopSV (2)](https://github.com/user-attachments/assets/4fd7d1a4-cbd9-4033-abeb-3e0c0e4fbef3)
![reLopSV (1)](https://github.com/user-attachments/assets/5ca9eaa0-5c4c-484f-adcb-8f9325ee51c1)

### Thao tác tạo bảng dữ liệu: GiaoVien(#magv,hoten,NgaySinh,@maBM)
1. Thao tác tạo khóa chính cho bảng dữ liệu GiaoVien.
![GiaoVien (2)](https://github.com/user-attachments/assets/5cffacf5-53ad-4f6c-b73b-8ed4a61b7bb8)
2. Tiếp theo là lưu bảng với tên GiaoVien như hình.
![GiaoVien (3)](https://github.com/user-attachments/assets/5b181e53-ee20-4bbe-95ae-28817dd52ada)
3. Thiết lập điều kiện CK cho bảng GiaoVien tại trường NgaySinh với điều kiện như hình.
![GiaoVien (1)](https://github.com/user-attachments/assets/fd4d7234-62ff-4680-9201-5d5fbc8e5148)
4. Thao tác thực hiện FK: Click chuột phải chọn Relationships tại khoảng trắng của bảng và thực hiện các thao tác như trên bảng GVCN.
![reGiaoVien (3)](https://github.com/user-attachments/assets/79daab01-b7b3-432a-b40b-4ddfaf9b65ed)
![reGiaoVien (2)](https://github.com/user-attachments/assets/d287e9c0-54c1-4899-8d07-f2b11fe27648)
![reGiaoVien (1)](https://github.com/user-attachments/assets/cb36e868-492c-49e6-834c-3a58334036db)

### Thao tác tạo bảng dữ liệu: BoMon(#MaBM,tenBM,@maKhoa)
1. Thao tác tạo khóa chính cho bảng dữ liệu BoMon.
![BoMon (2)](https://github.com/user-attachments/assets/f54e3bb3-6eaf-459f-9758-ebbcab19ed6a)
2. Tiếp theo là lưu bảng với tên BoMon như hình.
![BoMon (1)](https://github.com/user-attachments/assets/ead53f46-9a93-486d-b098-83f6a95615b4)

### Thao tác tạo bảng dữ liệu: Khoa(#maKhoa,tenKhoa)
1. Thao tác tạo khóa chính cho bảng dữ liệu Khoa.
![Khoa (2)](https://github.com/user-attachments/assets/7f9783ae-2fc0-4f4d-88bf-ffea4f302bb2)
2. Tiếp theo là lưu bảng với tên Khoa như hình.
![Khoa (1)](https://github.com/user-attachments/assets/83ae00cb-f449-4297-a15b-d7801cb567e7)

### Thao tác tạo bảng dữ liệu: MonHoc(#mamon,Tenmon,STC)
1. Thao tác tạo khóa chính cho bảng dữ liệu MonHoc.
![MonHoc (2)](https://github.com/user-attachments/assets/1c1f2327-8b53-422e-aa97-5e2d209cea6b)
2. Tiếp theo là lưu bảng với tên MonHoc như hình.
![MonHoc (1)](https://github.com/user-attachments/assets/cb64acf3-b2e0-403c-a926-948a33722019)
3. Thao tác thực hiện FK: Click chuột phải chọn Relationships tại khoảng trắng của bảng và thực hiện các thao tác như trên bảng GVCN.
![reBoMon (3)](https://github.com/user-attachments/assets/b8e9ca92-ccea-419d-abf2-b009ada025c0)
![reBoMon (2)](https://github.com/user-attachments/assets/b87da124-39a5-4e00-a340-24e0e910995c)
![reBoMon (1)](https://github.com/user-attachments/assets/217b51a3-3123-4abb-bcff-cce121f63f45)

### Thao tác tạo bảng dữ liệu: LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
1. Thao tác tạo khóa chính cho bảng dữ liệu LopHP.
![LopHP (2)](https://github.com/user-attachments/assets/9c388581-bdd9-4638-96a6-1e2ebe1ca169)
2. Tiếp theo là lưu bảng với tên LopHP như hình.
![LopHP (1)](https://github.com/user-attachments/assets/3a15e588-dea7-48c1-a3fc-2406b6387491)
3. Thao tác thực hiện FK: Click chuột phải chọn Relationships tại khoảng trắng của bảng và thực hiện các thao tác như trên bảng GVCN.
![reLopHP (1)](https://github.com/user-attachments/assets/c98ad182-1bd9-45d0-a057-02880508d30a)
![reLopHP (3)](https://github.com/user-attachments/assets/1e943ae3-ea23-494c-9364-01106ef60f1c)
![reLopHP (2)](https://github.com/user-attachments/assets/aff6329f-30a0-46a8-9361-f385b6996c69)

### Thao tác tạo bảng dữ liệu: DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi)
1. Thao tác tạo khóa chính cho bảng dữ liệu DKMH.
![DKMH (2)](https://github.com/user-attachments/assets/6badccb1-83f0-4969-87e8-a0c8a13b6188)
2. Tiếp theo là lưu bảng với tên DKMH như hình.
![DKMH (3)](https://github.com/user-attachments/assets/67995f73-6e1c-4a1c-8dde-20735752a0aa)
3. Thiết lập điều kiện CK cho bảng DKMH tại các trường DiemTP, DiemThi và PhanTramThi với điều kiện như hình.
![DKMH (4)](https://github.com/user-attachments/assets/363c80d6-fbcf-47ba-a246-320e7a03cc5e)
4. Sau khi thiết lập thành công CK, thì thử nhập dữ liệu cho bảng DKMH để kiểm tra nếu không vi phạm điều kiện CK thì quá trình diễn ra bình thường ngược lại nếu vi phạm CK thì hiển thị cảnh báo như hình ngay lập tức.
![DKMH (1)](https://github.com/user-attachments/assets/c7265b17-6f35-4783-93e2-bf51c4c1ae48)
5. Thao tác thực hiện FK: Click chuột phải chọn Relationships tại khoảng trắng của bảng và thực hiện các thao tác như trên bảng GVCN.
![reDKMH (3)](https://github.com/user-attachments/assets/d7ddef46-e268-4348-8b23-fe31bb91d89f)
![reDKMH (2)](https://github.com/user-attachments/assets/e405eb61-4cf7-4038-b7ae-3dd14b042b55)
![reDKMH (1)](https://github.com/user-attachments/assets/2ec36182-f98a-4707-96e1-9d3a118b0aeb)

### Thao tác thực hiện chuyển đồ hoạ từ Database và các bảng trên thành lệnh SQL tương đương. lưu tất cả các lệnh SQL trong file: Script_DML.sql: Click chuột phải vào Database và các bảng chọn -> Sciprt Database as -> CREATE To -> New Query Editor Window.
![Ảnh chụp màn hình 2025-03-25 195805](https://github.com/user-attachments/assets/6638f312-ebbe-4a28-8b17-00f32493b0a3)

### Sau khi hoàn thành xây dựng Database và các bảng với các trường theo yêu cầu thì cá nhân em Upload File Script_DML.sql lên Github, mong thầy dành thời gian xem bài của em và chỉ ra cho em điểm nào cần cải thiện và khắc phục để em kịp thời chỉnh sửa và rút kinh nghiệm cho những lần làm bài tiếp theo. Em xin trân thành cảm ơn ạ!
