# 58kmt
## Bài tập 02 của sv: k225480106047 - Dương Quang Minh - Môn Hệ quản trị csdl
## BÀI TẬP VỀ NHÀ 02 - MÔN HỆ QUẢN TRỊ CSDL:
## DEADLINE: 23H59 NGÀY 25/03/2025
#### ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 1)
1. Đã cài đặt SQL Server 2022 Dev.
2. Đã cài đặt SQL Managerment Studio bản mới nhất.
3. Đã kết nối từ SQL Managerment Studio vào SQL Server.
4. Đã có tài khoản github, biết cách tạo repository(kho lưu trữ) cho phép truy cập public.
#### BÀI TOÁN:
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
#### YÊU CẦU:
1. Thực hiện các hành động sau trên giao diện đồ hoạ để tạo cơ sở dữ liệu cho bài toán:
  + Tạo database mới, mô tả các tham số(nếu có) trong quá trình.
  + Tạo các bảng dữ liệu với các trường như mô tả, chọn kiểu dữ liệu phù hợp với thực tế (tự tìm hiểu)
  + Mỗi bảng cần thiết lập PK, FK(s) và CK(s) nếu cần thiết. (chú ý dấu # và @: # là chỉ PK, @ chỉ FK)
2. Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương. lưu tất cả các lệnh SQL trong file: Script_DML.sql

## Bài làm:
### 1. Tạo cơ sở dữ liệu:
###### chọn "New Database":
![1 1](https://github.com/user-attachments/assets/11250462-d619-43cb-af56-dba10f6e9a5d)
###### Tạo database:
![2 1](https://github.com/user-attachments/assets/c8cf5445-92a1-4627-9435-8c93f3452952)
### 2. Tạo bảng và đặt Primary key, Foreign key, check:
###### Tạo bảng mới:
![3 1](https://github.com/user-attachments/assets/75aa8697-ed74-4b8c-a4b9-c005611f6a57)
###### Tạo các trường và chọn kiểu dữ liệu phù hợp:
![4](https://github.com/user-attachments/assets/922d29e1-e724-4b66-bef0-e4393624cec6)
###### Lưu bảng và đặt tên:
![6](https://github.com/user-attachments/assets/d9fbd1cf-d6ca-491c-ab34-d7f518e9e54f)
###### Làm tương tự với các bảng khác:
![7](https://github.com/user-attachments/assets/66a50ab3-c805-4ef3-bc07-4c6e40d10fff)
### 3. Thiết lập Primary key
###### Nhấp chuột phải vào bảng, chọn Degisn:
![8](https://github.com/user-attachments/assets/b1abbf50-9fcd-4128-b05b-c722a17df850)
###### Nhấp chuột phải vào mũi tên hiện hành trước column chỉ định làm khóa chính, chọn "Set Primary key":
![5](https://github.com/user-attachments/assets/fd762947-1dd7-4376-a060-e15413549130)

###### Nhấp chuột phải vào Database Diagrams, chọn New Database Diagram:
![fk 1](https://github.com/user-attachments/assets/9447e212-3713-4959-a754-83a22507ee13)
######
