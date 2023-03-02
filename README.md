# COPY DEPLOY TOOL
Công cụ giúp lập trình viên đơn giản hoá việc sao chép từ mã nguồn dotNET MVC Web những tệp cần thiết để triển khai chạy thành sản phẩm

## Tổng quan
Hệ phần mềm gồm:
1. `Deploy Tool.cmd` - là tập tin chạy chính được viết bằng cmd script (dùng cho Windows)
2. `Exclude_Update.txt` - là tập tin chứa danh sách tên và pattern loại trừ tệp khi chọn update
3. `Exclude_Deploy.txt` - là tập tin chứa danh sách tên và pattern loại trừ tệp khi chọn deploy một bản mới

Bổ sung Exclude tương ứng nếu cần thiết.

Có thể tự tuỳ chỉnh mã nguồn tuỳ thích theo ý mình muốn.

## Cách dùng (bản chuẩn không sửa chữa)
1. Mở chạy tệp `Deploy Tool.cmd` sau đó chọn theo menu hướng dẫn.
2. Nhập đường dẫn đến thư mục mã nguồn (là thư mục gốc của Web có chứa thư mục App_Start và tệp Global.asax,...).
3. Nhập đường dẫn đến thư mục đích muốn nhận được kết quả xử lý để update hoặc deploy một bản mới.
4. Đợi quá trình copy diễn ra.

*__Lưu ý:__ khi chọn update chương trình sẽ không chép tập tin config trong thư mục bin, nếu cần có thay đổi config cần chép thủ công. Hoặc muốn tự động chép thì bỏ loại trừ trong tập tin `Exclude_Update.txt`*

## Yêu cầu
1. Phần mềm chỉ sử dụng trên Windows.
2. Cần có xcopy trong Windows, nếu không phải cài đặt bổ sung.
3. KHÔNG YÊU CẦU CHẠY VỚI QUYỀN ADMINISTRATOR

## Tài liệu tham khảo
https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/xcopy

## Tác giả
Nguyễn Hoàng Anh Khoa - VNDC
