# Hướng Dẫn Cấu Hình và Sử Dụng Krayin CRM Cơ Bản
*Đây là tài liệu hướng dẫn từng bước để thiết lập và vận hành hệ thống Krayin CRM dành cho Quản trị viên (Admin).*

---

## PHẦN 1: THIẾT LẬP CƠ CẤU TỔ CHỨC & PHÂN QUYỀN

Trước khi cho nhân viên sử dụng hệ thống, Admin cần thiết lập cấu trúc công ty để đảm bảo tính bảo mật và đúng luồng công việc.

### 1.1 Khởi tạo Nhóm (Groups)
Nhóm đại diện cho các phòng ban hoặc đội nhóm trong công ty (Ví dụ: Phòng Marketing, Phòng Kinh doanh 1, Phòng Chăm sóc khách hàng).

* **Thao tác:** Nhấp chuột vào biểu tượng cấu hình ⚙️ (Góc dưới cùng bên trái) > `Nhóm` > `+ Tạo Nhóm`.
* Tên nhóm nên đặt theo thực tế phòng ban tại công ty.

### 1.2 Thiết lập Vai trò (Roles) và Quyền hạn (Permissions)
Vai trò quyết định một nhân viên sẽ được "Nhìn thấy gì" và "Làm được gì" trên CRM.

* **Thao tác:** Đi tới Cài Đặt (⚙️) > `Vai Trò` > `+ Tạo Vai Trò`.
* **Cấu hình Quyền kiểm soát truy cập (Access Control):**
    * **Loại Quyền hạn:** Tùy chọn `Toàn cầu (Global)` - thấy tất cả dữ liệu hệ thống, `Nhóm (Group)` - chỉ thấy dữ liệu của nhóm mình, hoặc `Cá nhân (Individual)` - chỉ thấy dữ liệu do chính mình tạo ra.
    * Đánh dấu tick (☑️) vào các Module (Lead, Báo giá, Sản phẩm...) mà Vai trò này được phép truy cập.

### 1.3 Tạo tài khoản Người Dùng (Users)
Cấp tài khoản cho nhân viên đăng nhập.

* **Thao tác:** Vào Cài Đặt (⚙️) > `Người Dùng` > `+ Tạo Người Dùng`.
* Điền thông tin Đăng nhập, sau đó gán nhân viên đó vào **Nhóm (Group)** và **Vai Trò (Role)** tương ứng vừa tạo ở trên.

---

## PHẦN 2: THIẾT LẬP DỮ LIỆU ĐẦU VÀO CƠ BẢN

### 2.1 Cấu hình Tự động hóa (Thuộc tính - Attributes)
Krayin cho phép "độ" thêm các trường dữ liệu tùy ý (Ví dụ: khách mua xe cần thêm trường hãng xe con, khách spa cần trường loại da).

* **Thao tác:** Vào Cài Đặt (⚙️) > `Tự động hóa` > `Thuộc Tính` > `+ Tạo Thuộc Tính`.
* Chọn `Loại thực thể` (Entity Type) để gắn thuộc tính (VD gắn vào Lead, Người liên hệ, Tổ chức, hay Sản phẩm).
* Chọn `Loại` (Type) hiển thị: Text, Checkbox, Dropdown,...

### 2.2 Quản trị Kho / Sản phẩm (Products & Warehouses)
Nơi quản lý danh sách sản phẩm dịch vụ công ty bạn cung cấp.

* **Kho hàng:** Nếu bán hàng vật lý, vào Cài đặt (⚙️) > `Kho hàng` để thêm địa điểm kho.
* **Sản phẩm:** Tại thanh menu chính bên trái > `Sản phẩm` > `+ Tạo sản phẩm`. Nhập giá bán, SKU, số lượng tồn kho.

### 2.3 Quản lý Khách Hàng Tiềm Năng (Lead) cơ bản
Marketing cần biết khách đến từ kênh nào, thuộc nhóm nhu cầu ra sao.

* **Nguồn (Sources):** Vào Cài Đặt (⚙️) > `Khách Hàng Tiềm Năng` > `Nguồn`. Tạo mới các kênh như: *Facebook, Khách vãn lai, Giới thiệu, Website...*
* **Loại (Types):** Vào Cài Đặt (⚙️) > `Khách Hàng Tiềm Năng` > `Loại`. Tạo kiểu hình khách: *Khách cá nhân, Khách VIP, Doanh nghiệp...*

---

## PHẦN 3: XÂY DỰNG QUY TRÌNH CHĂM SÓC (PIPELINE)

Quy trình (Pipeline) là các cột trạng thái mà Khách hàng sẽ đi qua từ lúc mớt quen đến lúc chốt Sale (dạng bảng kéo thả Kanban).

### 3.1 Hình thành các Bước Giai / Đoạn (Stages)
* **Thao tác:** Vào Cài Đặt (⚙️) > `Khách Hàng Tiềm Năng` > `Quy trình`. Chỉnh sửa Default Pipeline hoặc tạo Thêm Quy trình mới (VD: Quy trình Bán Hàng, Quy trình Hậu Mãi).
* Thêm các Cột Giai đoạn tương ứng với công việc thực tế đội Sales. Ví dụ chuẩn chung:
   1. **Tiếp nhận mới**
   2. **Đang tư vấn / Cần gặp**
   3. **Đã Gửi Báo Giá**
   4. **Thương Lượng**
   5. **Thắng (Chốt đơn)** - (Set thuộc tính Giai đoạn đóng = Thắng)
   6. **Thua (Không mua)** - (Set thuộc tính Giai đoạn đóng = Thua)

---

## PHẦN 4: HƯỚNG DẪN DÀNH CHO NHÂN VIÊN SALES (SỬ DỤNG CHUNG)

Sau khi Admin cấu hình xong, nhân viên Kinh doanh sẽ thao tác hàng ngày tại các Menu chính (Bên trái giao diện).

1. **Menu Khách Hàng Tiềm Năng (Leads):**
   * Nơi chứa toàn bộ khách mới từ lúc bắt đầu có SĐT/Email. 
   * Sale có thể kéo thả thẻ khách hàng qua từng cột Pipeline.
   * Click vào Khách hàng (View) để:
     * *Thêm 1 Sản phẩm Khách muốn Mua*
     * *Tạo Ghi Chú sau khi trò chuyện.*

2. **Menu Hoạt Động (Activities):**
   * Nhắc việc cho Sale. 
   * Tại thẻ Khách Hàng, thêm hoạt động là: `Trưa mai gọi lại`, hệ thống sẽ gắn lịch và thông báo đến hạn.

3. **Menu Liên Hệ (Contacts):** 
   * Lưu trữ dài hạn danh bạ Mọi người (Người liên hệ - Person) và Công ty (Tổ chức - Organization). 
   * Khi Lead đã trở thành khách ruột, thông tin sẽ được chuẩn hóa lưu vĩnh viễn ở menu này.

4. **Menu Báo Giá (Quotes):**
   * Cho phép tạo và in file PDF báo giá chuyên nghiệp trên hệ thống (Sẽ liên kết trực tiếp với sản phẩm và Lead).

---

> **Lưu ý Cấu hình Chung Hệ Thống Cuối Cùng:**
> Vào **Cài Đặt  (⚙️) > Cấu hình (Configuration)**:
> Thay đổi Logo hiển thị, định dạng tiền tệ, múi giờ và Thiết lập cấu hình kết nối IMAP Email tại đây để Sales có thể gửi/nhận email ngay trên Krayin.
