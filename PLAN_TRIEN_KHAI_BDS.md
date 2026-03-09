# Kế Hoạch Triển Khai Krayin CRM - Mảng Bất Động Sản

Dựa trên tài liệu `PHAN_TICH_BDS.md`, dưới đây là danh sách công việc (Checklist) triển khai được chia thành 3 giai đoạn từ cấu hình cơ bản đến lập trình tính năng nâng cao. Bạn có thể sử dụng file này, đánh dấu `[x]` vào các task đã hoàn thành để theo dõi tiến độ.

---

## 🟢 GIAI ĐOẠN 1: Cấu hình cơ bản (Không yêu cầu Code)
*Mục tiêu:* Thiết lập các trường dữ liệu và quy trình để quản lý thông tin Rổ hàng và Nhu cầu khách cơ bản. Có thể làm ngay trên giao diện Quản trị viên.

### 1. Quản lý Rổ hàng & Dự án
- [x] Truy cập Settings -> Attributes.
- [x] Tạo Attribute `Dự án` (Project) dạng Select/Dropdown và thêm danh sách dự án.
- [x] Tạo Attribute `Block/Tòa nhà` dạng Select/Dropdown hoặc Text.
- [x] Gán các Attribute này vào Attribute Family của Product.

### 2. Thiết lập tiêu chí Nhu Cầu Khách Hàng (Tạo Lead/Person)
- [x] Trong Settings -> Attributes, tạo các Custom Attributes cho Lead / Person:
  - [x] `demand_budget_from` (Tài chính từ - Kiểu Number/Currency)
  - [x] `demand_budget_to` (Tài chính đến - Kiểu Number/Currency)
  - [x] `demand_area` (Diện tích mong muốn - Kiểu Text/Dropdown)
  - [x] `demand_location` (Khu vực/Dự án quan tâm - Kiểu Multi-select)
  - [x] `demand_direction` (Hướng quan tâm - Kiểu Select)
  - [x] `demand_type` (Loại BĐS: Căn hộ, Đất nền... - Kiểu Select)

### 3. Phân tách mảng Bán và Cho Thuê
- [x] Thuộc tính Rổ hàng: Tạo Attribute `transaction_type` (Bán/Thuê/Cả hai) và `rent_price` (Giá thuê) cho Product.
- [x] Cấu hình Pipeline (Settings -> Pipelines):
  - [x] Tạo `Quy Trình Bán BĐS` (Mới -> Liên hệ -> Đi xem -> Thương lượng -> Cọc -> Ký HĐMB).
  - [x] Tạo `Quy Trình Cho Thuê BĐS` (Mới -> Khảo sát căn -> Chốt cọc -> Ký HĐ Thuê).

### 4. Quản lý Giá linh hoạt (Dùng Quotes)
- [x] Quy trình làm việc: Hướng dẫn Sale sử dụng tính năng Báo giá (Quotes) và các ô `Discount Amount` / `Adjustment Amount` thay vì sửa giá niêm yết của sản phẩm.
- [x] (Tùy chọn thêm): Tạo thêm trường `base_price` (Giá gốc) và `actual_sale_price` (Giá bán thực tế) vào Quote Item để theo dõi biên độ chênh lệch.

---

## 🟡 GIAI ĐOẠN 2: Tùy biến UI/UX (Can thiệp Code Frontend & Backend)
*Mục tiêu:* Tối ưu hóa trải nghiệm thao tác trên phần mềm cho bộ phận Sales, giúp họ làm việc hiệu quả và nhanh chóng hơn.

###[x] 2.1. Nút Thao tác nhanh "Chốt Cọc/Từ Chối" trong màn hình Lead

- [x] **Code UI:** Thêm 2 nút "Chốt Cọc (Won)" và "Từ chối (Lost)" ở màn hình chi tiết Lead và DataGrid.
- [x] **Logic:** Khi bấm Chốt cọc, mở modal yêu cầu nhập `Giá trị chốt` và `Closed_at`, sau đó Update Stage sang Won.
- [x] **Logic:** Khi bấm Từ chối, hiển thị Popup yêu cầu nhập lý do rớt (`lost_reason`) -> Update state sang Lost.

### [x] 2.2. Tab Lịch sử Giao dịch trong hồ sơ Khách hàng (Person)

- [x] **Code UI:** Ở trang hiển thị Person, thêm một Tab mới như `BĐS Đã Sở Hữu`.
- [x] **Data Query:** Filter các Leads của Person đó có trạng thái Won, Join với bảng Products.
- [x] **Hiển thị Bảng:** Ngày chốt cọc, Mã căn/Tên dự án, Giá trị giao dịch, Tên Sale phụ trách.

### [x] 2.3. Chức năng Gợi ý & Match Bất động sản

- [x] **Code UI:** Thêm nút/tab "Gợi ý Rổ hàng" trong màn hình Lead.
- [x] **Logic Matching:** Lấy các tiêu chí nhu cầu (budget, area, location...) tự động Query xuống kho Products để tìm ra căn Còn trống thỏa điều kiện.
- [x] **Thao tác nhanh:** Cho phép Sale tick chọn 2-3 căn từ danh sách match -> Tự động đưa vào "Giỏ tư vấn" (Lead Products).
- [ ] Form báo giá: Trích xuất giỏ tư vấn thành 1 Quote dạng PDF so sánh các phương án gửi cho khách.

---

## 🔴 GIAI ĐOẠN 3: Xây dựng Module Chuyên sâu (Core Dev)
*Mục tiêu:* Giải quyết các bài toán hạch toán hoa hồng, tài chính và tự động hóa hệ thống BĐS.

### 1. Module Quản lý Hoa hồng (Commission) riêng biệt
- [ ] **Tạo Bảng:** `commission_splits` (Lead ID, User ID, Vai trò, % Hoa hồng, Ngày thanh toán, Trạng thái...).
- [ ] **Event Logic:** Lắng nghe sự kiện Won của Lead để kích hoạt tạo bản ghi chia hoa hồng (Hoặc tạo Form cho Kế toán điền % cho mỗi NVKD).
- [ ] **Code Báo cáo:** Tạo màn hình cho NVKD và Quản lý theo dõi tổng hoa hồng chờ nhận, hoa hồng đã nhận trong tháng.

### 2. Quản lý Vòng đời Hợp Đồng Thuê
- [ ] Thêm trường `contract_end_date` (Ngày hết hạn hợp đồng) cho khách thuê.
- [ ] **Automation / Cron Job:** Lập lịch chạy hàng ngày để quét ngày hết hạn hợp đồng.
- [ ] Thông báo: Tự động khởi tạo 1 `Activity` nhắc nhở Sale trước ngày hết hạn 30 ngày (Ví dụ: "Hỏi khách gia hạn thuê căn Y").

---
> **Lưu ý:** Bạn có thể tích chọn thay đổi trực tiếp trên file này trên VSCode/IDE để đánh dấu những hạng mục đang Code và đã hoàn thành.
