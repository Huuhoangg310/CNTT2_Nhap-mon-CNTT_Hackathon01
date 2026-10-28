# BÀI LÀM – HACKATHON 01

- **Mã đề:** 21
- **Họ tên:** Nguyễn Hữu Hoàng
- **Lớp:** CNTT2
- **Link repository:** https://github.com/Huuhoangg310/CNTT2_Nhap-mon-CNTT_Hackathon01/blob/main/qua-luu-niem-website/bai_lam.md?plain=1
- **Hệ điều hành (Windows/macOS):** Windows

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
pwd
ls -force
mv mau_goi_qua.txt docs
mv logo_qua_luu_niem.PNG media
cp media/logo_qua_luu_niem.PNG backup
rm temp_293.tmp
cd logs
ls -force
cd..

```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text

    Directory: C:\Users\ADMIN\Documents\starter-kit\qua-luu-niem-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        10/28/2026   1:47 PM                backup
d-----        10/28/2026   1:40 PM                data
d-----        10/28/2026   1:44 PM                docs
d-----        10/28/2026   1:40 PM                logs
d-----        10/28/2026   1:45 PM                media
------        10/27/2026   1:32 AM             74 .env
-a----        10/27/2026   1:32 AM           2224 bai_lam.md


    Directory: C:\Users\ADMIN\Documents\starter-kit\qua-luu-niem-website\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           6478 logo_qua_luu_niem.PNG


    Directory: C:\Users\ADMIN\Documents\starter-kit\qua-luu-niem-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           6103 don_qua_thang_12.xlsx


    Directory: C:\Users\ADMIN\Documents\starter-kit\qua-luu-niem-website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM             53 mau_goi_qua.txt


    Directory: C:\Users\ADMIN\Documents\starter-kit\qua-luu-niem-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           1040 gift.log


    Directory: C:\Users\ADMIN\Documents\starter-kit\qua-luu-niem-website\media


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           6478 logo_qua_luu_niem.PNG


```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```shell
get-content logs/gift.log | select-string "ERROR" >> logs/daily_report.txt
get-content logs/daily_report.txt

```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```text
2026-12-28 08:05:36 [ERROR] Thanh toan bi tu choi
2026-12-28 08:08:36 [ERROR] Thanh toan bi tu choi

```

## 4.4. Thao tác với tài liệu Markdown (README.md)

> README.md được chấm trực tiếp trên file `README.md` ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] Heading 1: tên dự án
- [x] Mô tả ngắn có cả **in đậm** và *in nghiêng*
- [x] Bảng `Thư mục | Nội dung`, ít nhất 3 dòng dữ liệu
- [x] Code block chứa lệnh PowerShell/Terminal liệt kê nội dung dự án
- [x] Task list ít nhất 2 công việc, có ít nhất 1 mục đã hoàn thành
- [x] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
.\auto_report.ps1

```

### Kết quả hiển thị

```text
Dang loc log...
Hoan Thanh!

```

## 4.6. Đếm số dòng lỗi

### Lệnh

```shell
(gc .\logs\gift.log | select-string "ERROR").count

```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```text
7

```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
set-content .\logs\tong_hop.txt -value "===TONG HOP LOG==="
get-content .\logs\gift.log | select-string " WARNING" >> .\logs\tong_hop.txt
(gc .\logs\gift.log | select-string " ERROR").count >>.\logs\tong_hop.txt 

```

### Nội dung file logs/tong_hop.txt

```text
(Dán kết quả vào đây – xoá dòng này)

```

## 4.8. Excel

> Phần Excel được chấm trực tiếp trên file `data/don_qua_thang_12.xlsx`, không cần ghi vào đây.
