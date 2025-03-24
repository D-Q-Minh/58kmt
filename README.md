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
###### Bảng Lop:
![bang lop 1](https://github.com/user-attachments/assets/499f715b-dd60-407a-8efd-080d1bc9a9f9)
###### Bảng GVCN:
![bang gvcn 1](https://github.com/user-attachments/assets/5a478d7c-af34-4252-ba7d-aa26b20e49bc)
###### Bảng LopSV
![bang lopsv 1](https://github.com/user-attachments/assets/2e4102d2-8b53-46ff-a82c-bd9d274a16a3)
###### Bảng GiaoVien
![bang giaovien 1](https://github.com/user-attachments/assets/46e060a4-b094-40c7-9cb8-36eba3dfdc9d)
###### Bảng BoMon
![bang bomon 1](https://github.com/user-attachments/assets/8a83be52-b161-43ea-9aef-909c8e7b84c2)
###### Bảng Khoa
![bang khoa 1](https://github.com/user-attachments/assets/e474ba8e-15dd-44a1-9c94-e0cc25dadd70)
###### Bảng MonHoc
![bang monhoc 1](https://github.com/user-attachments/assets/c36a1685-ab17-4a66-9b10-c5faa4f6c3fd)
###### Bảng LopHP
![bang lophp 1](https://github.com/user-attachments/assets/26b531b5-6a04-47fc-bedf-a4bf9c590f4a)
###### Bảng DKMH
![bang dkmh 1](https://github.com/user-attachments/assets/7c3e0196-3106-4d4b-92f7-0ab1d332b089)

![7](https://github.com/user-attachments/assets/66a50ab3-c805-4ef3-bc07-4c6e40d10fff)
### 3. Thiết lập Primary key, Foreign key, Check
#### Primary key (khóa chính)
###### Nhấp chuột phải vào bảng, chọn Degisn:
![8](https://github.com/user-attachments/assets/b1abbf50-9fcd-4128-b05b-c722a17df850)
###### Nhấp chuột phải vào mũi tên hiện hành trước column chỉ định làm khóa chính, chọn "Set Primary key":
![5](https://github.com/user-attachments/assets/fd762947-1dd7-4376-a060-e15413549130)

#### Foreign key (khóa ngoại)
###### Nhấp chuột phải vào Database Diagrams, chọn New Database Diagram:
![fk 1](https://github.com/user-attachments/assets/9447e212-3713-4959-a754-83a22507ee13)
###### Nhấp chuột phải trong cửa sổ Diagram, chọn Add table:
![fk 2](https://github.com/user-attachments/assets/89aae072-2f2d-4f56-8cbd-96bb1b427129)
###### Thêm các bảng:
![fk 3](https://github.com/user-attachments/assets/6955a7ba-8ea6-406b-84bf-94c3cec67af0)
###### Nhấp chuột phải vào bảng, chọn relationship:
![fk 5 1](https://github.com/user-attachments/assets/c1f07f88-7354-4ef2-92ae-d2f39add79fc)
###### Cửa sổ foreign key relationships hiện lên, ấn "Add" thêm quan hệ tham chiếu mới và điều chỉnh:
![fk 6 1](https://github.com/user-attachments/assets/6eb5d049-ddfc-4ff6-bde5-80fa6f0c4cdd)
###### Cửa số tables and columns hiện lên, điều chỉnh quan hệ tham chiếu:
![fk 7 1](https://github.com/user-attachments/assets/5a27e431-4b4e-42f0-ac67-cbc8bc8672ad)
###### Tương tự với các bản khác
###### Bảng BoMon:
![fk bomon 1](https://github.com/user-attachments/assets/bcf20818-9dcb-4790-b8e9-4ef0d34ef4db)
###### Bảng GVCN:
![fk gvcn 1](https://github.com/user-attachments/assets/d63d9f1b-e78b-466f-93ce-099449e722e5)
![fk gvcn 2](https://github.com/user-attachments/assets/9d22badf-1477-44f6-9158-624466a78a95)
###### Bảng GiaoVien:
![fk giaovien 1](https://github.com/user-attachments/assets/d7996711-15cd-429d-b60d-1d7c3ccfefb9)
###### Bảng LopHP:
![fk lophp 1](https://github.com/user-attachments/assets/90e61e4b-7ed4-4c85-afc2-1c0e03251e3c)
![fk lophp 2](https://github.com/user-attachments/assets/4166c299-7d6e-4402-86ec-6d01c89732db)
###### Bảng DKMH:
![fk dkmh 1](https://github.com/user-attachments/assets/8c52755b-2253-427e-96ac-5ca8a849b6d1)
![fk dkmh 2](https://github.com/user-attachments/assets/d25179fa-2546-4f7f-9e30-2de39da242cc)

###### Kết quả:
![fk so do](https://github.com/user-attachments/assets/facd3e96-ada0-41fe-a916-39c275177fd1)

#### Check
###### Nhấp chuột phải, chọn Design
![check 1](https://github.com/user-attachments/assets/ac87a6c2-0d85-452f-b872-9e1b323a7b90)
###### Chuột phải ở khoảng trống, chọn Check Constraint
![check 2](https://github.com/user-attachments/assets/077c0b09-3dfa-4aa4-9386-03f1a5f677c7)
###### Thêm check
![check 3 1](https://github.com/user-attachments/assets/f49789c4-6db8-4191-bd77-2e0c2946126b)
###### Nhập biểu thức điều kiện
![check 4 1 png](https://github.com/user-attachments/assets/cb29d03f-6329-4026-9ad5-e599bee9634c)
