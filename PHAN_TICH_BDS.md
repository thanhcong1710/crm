# Phân Tích Giải Pháp Bất Động Sản (BĐS) trên Krayin CRM

Tài liệu này ghi chú lại các phân tích và giải pháp cho các vướng mắc khi triển khai Krayin CRM cho mảng BĐS.

## Vướng mắc 1: Quản lý 1 Dự án có nhiều Căn hộ

Krayin CRM mặc định quản lý theo "Sản phẩm" (Products) là một danh sách phẳng. Trong BĐS, cấu trúc dữ liệu thường là phân cấp: **Dự án -> Phân khu/Block -> Căn hộ/Lô đất**.

**Cách xử lý trên Krayin CRM:**

### Lựa chọn 1: Sử dụng Thuộc tính (Attributes) - Khuyên dùng vì dễ làm nhất
- **Mô tả:** Mỗi Căn hộ/Lô đất là 1 **Product** độc lập trong CRM.
- **Cách làm:** 
  1. Tạo một thuộc tính (Attribute) dạng `Select` (Dropdown) có tên là **"Dự án"** (Project). Thêm tên các dự án vào làm danh sách chọn.
  2. Tạo tương tự cho **"Block/Tòa nhà"**.
  3. Khi tạo 1 Product (Ví dụ: Căn hộ A01-05), chọn Thuộc tính Dự án = "Vinhomes Grand Park", Block = "S1.01".
- **Ưu điểm:** Tận dụng 100% tính năng Filter (Bộ lọc) mặc định của Krayin. Sale có thể dễ dàng vào trang danh sách Sản phẩm, lọc theo Dự án = "Vinhomes Grand Park" để xem toàn bộ rổ hàng của dự án đó, căn nào còn trống, căn nào đã bán.

### Lựa chọn 2: Tạo Entity/Bảng dữ liệu riêng cho Dự án
- **Mô tả:** Tạo hẳn một Module mới (CRUD) quản lý riêng các "Dự án". Sau đó thêm một trường `project_id` (Khóa ngoại) vào bảng Products.
- **Ưu điểm:** Quản lý được thông tin chi tiết của Dự án (Tên DA, Chủ đầu tư, Vị trí, Tổng diện tích, Chính sách bán hàng chung).
- **Nhược điểm:** Phải code thêm nhiều (Tạo Route, Controller, View, Model) và can thiệp sâu vào cấu trúc DataGrid của Product.

📌 **Khuyến nghị ban đầu:** Nên dùng **Lựa chọn 1** trước để hệ thống chạy nhanh, sau này khi quy mô lớn cần lưu trữ nhiều thông tin dự án thì tính tới Lựa chọn 2.


---

## Vướng mắc 2: Chia Hoa Hồng (Commission) cho Nhân viên

Krayin CRM mặc định là phần mềm quản lý quan hệ khách hàng, chỉ có ghi nhận Giá trị cơ hội (`lead_value`) lúc thắng (Won), nhưng KHÔNG CÓ module quản lý tài chính/hoa hồng nhân sự.

Trong BĐS, việc chia hoa hồng rất phức tạp (Ví dụ: 1 deal có bạn Sale A chốt khách, bạn Sale B tìm ra leads, Trưởng phòng hỗ trợ chốt, Công ty giữ lại % thuế...).

**Cách xử lý trên Krayin CRM:**

### Giai đoạn 1: Cơ bản (Thêm trường dữ liệu vào form Chốt Deal)
- **Cách làm:** Khi 1 Lead chuyển sang trạng thái "Thắng" (Won/Chốt cọc), hiện lên một cửa sổ yêu cầu nhập thông tin hoa hồng.
- Chúng ta có thể thêm các trường (Attributes) cho bảng `leads` hoặc `quotes`:
  - `commission_rate` (% Hoa hồng công ty trả cho mảng này)
  - `sale_commission_amount` (Số tiền thực nhận của Sale chính)
- **Ưu điểm:** Nhanh gọn, dễ làm.
- **Nhược điểm:** Chỉ xử lý được bài toán 1 Sale nhận 100% hoa hồng.

### Giai đoạn 2: Chuyên sâu (Tạo Bảng / Module quản lý Hoa hồng riêng)
Do tính chất chia chác (Split) phức tạp, bắt buộc phải code thêm một **Module Commission (Hoa hồng)**.
1. Tạo 1 bảng mới trong Database tên là `commission_splits`:
   - `lead_id` (Liên kết với Deal đã chốt)
   - `user_id` (Mã nhân viên nhận hoa hồng)
   - `role_in_deal` (Vai trò: Người tìm khách, Người chốt, TPKD...)
   - `commission_percent` (% chia trong tổng hoa hồng khối kinh doanh)
   - `amount` (Số tiền thực nhận)
   - `status` (Trạng thái thanh toán: Đã duyệt, Đã chi trả, Chờ chủ đầu tư trả tiền)
2. Viết một Event Listener: Khi Lead chuyển sang "Thắng", hệ thống tự động tạo các bản ghi vào bảng này dựa trên chính sách cài đặt trước, hoặc mở ra 1 Form để Admin/Kế toán nhập tỷ lệ chia cho từng người.
3. Tạo 1 trang Report (Báo cáo Hoa hồng) cho mỗi NVKD xem được mình đang có bao nhiêu hoa hồng đang chờ nhận, bao nhiêu đã nhận trong tháng.

📌 **Khuyến nghị:** 
- Phải dùng **Giai đoạn 2** mới đáp ứng được nghiệp vụ BĐS thực tế.
- Sẽ cần code thêm khoảng 3-4 ngày cho riêng chức năng Báo cáo & Nhập liệu chia hoa hồng này, vì nó liên quan trực tiếp đến thu nhập nên cần chính xác tuyệt đối.

---
*Tài liệu này được lưu trữ để làm lộ trình phát triển tính năng cho hệ thống.*

## Vướng mắc 3: Khách hàng chỉ có "Nhu cầu" chung (Khoảng giá, Khu vực, Diện tích, Hướng) chưa chốt Căn cụ thể

Trong thực tế, khách hàng khi mới tiếp cận (giai đoạn Lead mới) hiếm khi chỉ đích danh: "Tôi muốn mua căn A05 dự án X", mà họ thường đưa ra **Đầu bài / Tiêu chí**: "Tôi có tài chính 3-4 tỷ, muốn tìm căn 2 ngủ (khoảng 60-70m2) ở Quận 9, hướng Đông". Do đó, tính năng gán 1 `Product` duy nhất lúc mới tạo Lead là không khả thi và không sát thực tế.

**Cách xử lý trên Krayin CRM:**

### Bước 1: Số hóa "Bộ Tiêu Chí / Nhu Cầu" của Khách Hàng vào Lead
- KHÔNG bắt buộc chọn Sản phẩm (Product) khi tạo Lead.
- Cần tạo thêm các **Custom Attributes** (Thuộc tính tùy chỉnh) cho đối tượng `Lead` hoặc `Person` (Khách hàng) để Sale nhập đầu bài.
- Các trường (Attributes) cần thêm vào Entity `Lead`:
  1. `demand_budget_from` (Tài chính từ - Kiểu Number/Currency)
  2. `demand_budget_to` (Tài chính đến - Kiểu Number/Currency)
  3. `demand_area` (Diện tích mong muốn - Kiểu Text hoặc Dropdown: 50-70m2)
  4. `demand_location` (Khu vực/Dự án quan tâm - Kiểu Multi-select)
  5. `demand_direction` (Hướng quan tâm - Select: Đông, Tây...)
  6. `demand_type` (Loại BĐS: Căn hộ, Đất nền...)

*(Lợi ích)*: Giúp quản lý đánh giá được tệp khách hàng tiềm năng đang tập trung vào phân khúc nào để ra chiến lược nhập nguồn hàng/chạy Ads.

### Bước 2: Chức năng "Gợi ý / Ghép nối" BĐS (Matching / Suggestion)
Krayin CRM hiện tại có tính năng thêm `Product` vào `Lead` (gọi là Lead Products). Tuy nhiên, mặc định bạn phải tự gõ tên sản phẩm để tìm.

**Giải pháp đề xuất (Cần code thêm tính năng):**
- **Xây dựng Nút "Gợi ý Rổ hàng" (Suggest Properties):** Ngay trong trang chi tiết của 1 Lead, thêm một nút bấm hoặc một Tab riêng.
- **Luồng hoạt động:**
  1. Khi bấm vào nút này, hệ thống sẽ tự động lấy các "Tiêu chí" của Lead (Khai báo ở Bước 1).
  2. Query (truy vấn) xuống bảng `Products` (Rổ hàng) để lọc ra các Căn/Lô đang ở trạng thái "**Còn trống / Mở bán**" VÀ thỏa mãn các điều kiện: Giá nằm trong khoảng ngân sách, đúng khu vực, đúng loại hình.
  3. Hiển thị danh sách kết quả (dạng popup hoặc bảng thu nhỏ). 
  4. Sale có thể tích chọn (Checkbox) 2-3 căn phù hợp nhất trong danh sách gợi ý đó và ấn nút "**Đưa vào giỏ tư vấn**". 
  5. Hệ thống sẽ tự liên kết 2-3 BĐS đó vào danh sách `Lead Products` của Lead hiện tại.

### Bước 3: Gửi Báo giá / Gợi ý cho Khách hàng
- Dựa vào danh sách các BĐS đã chọn làm "Giỏ tư vấn" ở Bước 2.
- Sale có thể tạo 1 **Quote (Báo giá)** chứa các căn BĐS đó, hệ thống sẽ render ra một trang PDF hoặc Email gửi cho khách để so sánh:
  - Phương án 1 (Căn A): Giá 3.2 tỷ - Thiết kế 2PN - Hướng Đông.
  - Phương án 2 (Căn B): Giá 3.5 tỷ - Thiết kế 2PN - Căn góc.
- Nếu khách chốt Phương án nào, Sale chỉ việc đánh dấu Phương án đó là **Thắng (Won)** và tiến hành quy trình Đặt cọc, đồng thời giải phóng (xóa liên kết) các phương án còn lại để khách khác có thể mua.

📌 **Khuyến nghị Lộ trình:** 
- Rất dễ để thực hiện **Bước 1** (chỉ việc tạo custom attributes trong Setting của Krayin CRM mà không cần code). 
- Khuyên bạn nên làm thẳng **Bước 1** ngay lúc thiết lập ban đầu.
- **Bước 2** và **Bước 3** là tính năng "Sát thủ" giúp hệ thống trở nên chuyên nghiệp, nhưng cần đầu tư thời gian lập trình (Custom Component Vue.js hoặc Blade trong trang chi tiết Lead). Nên đưa vào Giai đoạn 2 của quá trình tùy biến Krayin.

---

## Vướng mắc 4: Không có Nút "Kết thúc nhanh" (Đóng băng/Thua) cho Lead

Trong bảng Kanban (Pipeline) của Krayin CRM, đôi khi Sale vừa bốc máy gọi cuộc đầu tiên thì khách đã chê đắt hoặc từ chối thẳng. Nếu bắt Sale phải kéo Lead qua từng bước (Liên hệ -> Đi xem -> Đoán giá -> Thua) thì rất mất thời gian và sai bản chất.

**Cách xử lý trên Krayin CRM:**

### Bước 1: Cho phép cập nhật Status (Trạng thái) và Nút Quick Action (Thao tác nhanh)
- Khái niệm "Stage" (Giai đoạn quy trình - Mới, Đã liên hệ...) khác với "Status" (Kết quả cuối cùng - Đang xử lý, Thắng, Thua).
- Krayin thường chỉ dựa vào cột Stage cuối cùng để đánh giá là Won/Lost. Ta cần thay đổi điều này.
- **Giải pháp Code:** Thêm 2 nút bấm nổi bật ngay trong màn hình chi tiết Lead (góc trên cùng bên phải) và trong danh sách (DataGrid): 
  - 🟢 **Chốt Cọc (Mark as Won)**
  - 🔴 **Từ Chối / Rớt (Mark as Lost)**.
- Khi bấm nút **"Từ Chối"**, Popup sẽ hiện ra yêu cầu nhập lý do (Lost Reason: Không đủ tài chính, Đã mua dự án khác, Không liên lạc được).

*(Lợi ích)*: Giúp luồng thao tác của Telesale/Sales trực tiếp diễn ra rất mượt, chỉ cần 1 cú click là có thể kết thúc và dọn dẹp không gian làm việc.

---

## Vướng mắc 5: Không xem được Lịch sử Mua/Chốt cọc trong hồ sơ Khách Hàng (Person)

Mặc định khi bạn vào màn hình Chi tiết một Khách hàng (Person), hệ thống chỉ liệt kê danh sách các `Leads` (Cơ hội khách đang theo), nhưng không tổng hợp rõ ràng xem người này đã từng mua thành công Căn BĐS nào chưa, tổng chi tiêu ra sao. Trong BĐS, dòng đời khách V.I.P mua 2-3 căn hoặc mua rồi ký gửi bán lại là rất phổ biến.

**Cách xử lý trên Krayin CRM:**

### Xây dựng Tab / Component "Lịch sử Giao dịch (Transaction History)"
Thay vì bắt Sale phải tự click vào từng Lead cũ để xem khách chốt căn nào, ta sẽ lập trình hiển thị một Tab mới ngay trong màn hình `Person`.

**Giải pháp Code (Tùy biến View Khách Hàng):**
1. Mở file Front-end chi tiết Khách hàng (thường là component Vue/Blade của thư mục `Contact/Person`).
2. Thêm một Tab (Ví dụ: **BĐS Đã Sở Hữu** hoặc **Lịch Sử Chốt Cọc**).
3. Truy vấn (Query) xuống Database: Lấy toàn bộ `Leads` của `Person` này mà có trạng thái `Won` (Thắng), sau đó Join (kết nối) với bảng `Products` (Rổ hàng) để lấy ra thông tin chi tiết các căn họ đã mua.
4. Hiển thị dưới dạng một bảng đơn giản:
   * Ngày chốt cọc (Date)
   * Mã Căn / Tên Dự Án (Product)
   * Giá trị giao dịch (Lead Value)
   * Sale thực hiện (Owner)

*(Lợi ích)*: 
- NVKD và Trưởng phòng khi nhìn vào hồ sơ sẽ thấy ngay "Độ VIP" của khách hàng thông qua danh mục tài sản đã mua. 
- Tiện lợi cho việc CSKH (Gửi quà sinh nhật, mời event tri ân CĐT), hoặc đề xuất bán chéo/bán lại (Resale/Cross-sell).

📌 **Khuyến nghị Lộ trình:** 
Cả 2 vướng mắc 4 và 5 đều yêu cầu can thiệp vào Source Code (Thêm nút ở giao diện Lead, thêm Tab truy vấn ở giao diện Person). Việc này không quá phức tạp, có thể đưa vào **Giai đoạn 1** (sau khi đã setup Rổ Hàng thành công) để cải thiện trải nghiệm sử dụng thực tế (UX) cho đội ngũ Sales.

---

## Vướng mắc 6: Giá bán biến động (Bán chênh, tự cắt máu/chiết khấu)

Trong BĐS, giá cấu hình trên hệ thống (`Product Price`) thường là **Giá trần (Giá niêm yết của Chủ đầu tư/Chủ nhà)**. Tuy nhiên, khi Sale ra mặt khách, giá chốt cuối cùng hiếm khi bằng đúng giá này vì:
1. **Bán thấp hơn (Chiết khấu/Cắt máu):** Sale tự lấy hoa hồng của mình giảm cho khách để dễ chốt. Hoặc Chủ đầu tư có chính sách vay ngân hàng/thanh toán sớm được giảm X%.
2. **Bán cao hơn (Bán chênh/Tiền ngoài):** Sale đàm phán được giá cao hơn giá chủ nhà giao, thu phần tiền chênh lệch ngoài hợp đồng.

**Cách xử lý trên Krayin CRM (Sử dụng Module Quotes - Báo giá):**

### Bước 1: Khai thác tính năng Discount (Chiết khấu) và Adjustment (Điều chỉnh) của Quote
Krayin CRM đã có module Quotes (Báo giá) rất mạnh, hỗ trợ việc điều chỉnh giá trên từng dòng sản phẩm (`Quote items`). 
- **Cách làm:** Khi làm báo giá cho 1 Lead, Sale chọn Product (Căn hộ) vào Quote. Thay vì sửa hard-code giá gốc của Product, Sale sẽ nhập vào ô `Discount Amount` (Số tiền chiết khấu) hoặc `Adjustment Amount` (Số tiền điều chỉnh tăng/giảm).
- Hệ thống sẽ tự tính toán: `Grand Total = Sub Total - Discount + Adjustment + VAT`.

### Bước 2: Thêm trường "Giá thu về (Net Price)" và "Giá bán (Sale Price)"
- Nếu chỉ dùng Discount thì khi thống kê hoa hồng sẽ khó minh bạch (không biết tiền chênh lệch chui vào túi ai).
- **Giải pháp Code:** Trong đối tượng `Quote Item` hoặc `Lead Product`, tạo thêm 2 trường:
  1. `base_price`: Giá gốc chủ nhà / CĐT (Lấy từ rổ hàng).
  2. `actual_sale_price`: Giá thực tế giao dịch chốt với khách.
  3. *(Ẩn)* `price_diff`: Chênh lệch = `actual_sale_price - base_price`. Trợ giúp Kế toán ghi nhận khoản chênh/cắt máu này thuộc về công ty hay của Sale để tính thưởng.

*(Lợi ích)*: Đảm bảo "Rổ hàng chung" luôn giữ nguyên giá niêm yết, nhưng mỗi "Deal/Hợp đồng" lại có một mức giá linh hoạt tùy năng lực đàm phán của Sale.

---

## Vướng mắc 7: Quản lý song song cả Mô hình "Bán" và "Cho Thuê"

Bất động sản chia làm 2 nhánh rõ rệt là Bán (Sale) và Cho thuê (Rent). Giao dịch Cho thuê thường xoay vòng nhanh (hợp đồng 1 năm, 6 tháng), hoa hồng tính theo tháng tiền thuê (VD: Hoa hồng = 1 tháng tiền nhà).

**Cách xử lý trên Krayin CRM:**

### Lựa chọn 1: Dùng "Lead Types" và "Product Attributes" (Phân loại dữ liệu)
- **Rổ hàng (Products):** Thêm 1 Attribute loại Dropdown là `transaction_type` (Loại Giao Dịch) gồm: `Bán`, `Cho thuê`, `Cả Bán & Cho thuê`. Thêm trường `rent_price` (Giá thuê / tháng).
- **Khách hàng (Leads):** Bạn đã cấu hình sẵn `Lead Types` trong file Seeder (Khách Mua Đầu Tư, Khách Thuê...). Khi tạo Lead mới, bắt buộc chọn loại Nhu cầu này. 
- **Quy trình (Pipelines):** Hành vi "Thuê" kết thúc nhanh hơn "Mua". Phân tách 2 luồng:
  - Tạo 1 Pipeline: `Quy Trình Bán BĐS` (Mới -> Liên hệ -> Đi xem -> Thương lượng -> Cọc -> Ký HĐMB).
  - Tạo 1 Pipeline: `Quy Trình Cho Thuê BĐS` (Mới -> Khảo sát căn -> Chốt cọc -> Ký HĐ Thuê).

*(Lợi ích)*: Tách bạch rõ 2 mảng trên cùng 1 hệ thống. Quản lý có thể xem phễu (Funnel) của độ nhóm Cho Thuê riêng, nhóm Bán riêng mà không lẫn lộn data.

### Lựa chọn 2: Quản lý Vòng đời Hợp Đồng Thuê (Giai đoạn nâng cao)
Đặc thù Cho thuê là khách sẽ **hết hạn hợp đồng (Renew)**. Nếu để trôi qua ngày này mà không nhắc, công ty sẽ mất khoản phí gia hạn hoặc mất khách vào tay môi giới khác.
- **Giải pháp Code:** Phải viết thêm module (hoặc dùng Automation/Workflow của Krayin):
  1. Khi 1 Lead Thuê chuyển sang "Thắng", lưu lại `contract_end_date` (Ngày hết hạn hợp đồng thuê).
  2. Hệ thống (Job/Cron) chạy mỗi ngày. Trước ngày hết hạn 30 ngày, tự động tạo 1 `Activity` (Nhắc nhở công việc) báo cho Sale: *"Khách Hàng X sắp hết hạn hợp đồng nhà Y, gọi điện hỏi xem có gia hạn không?"*. Hoặc tự động tạo lại 1 Lead mới gán cho Sale chăm sóc vòng 2.

📌 **Khuyến nghị Lộ trình:** 
- Vấn đề **Giá linh hoạt** (Vướng mắc 6) nên dùng luôn tính năng Báo giá (Quotes) mặc định của Krayin + Thêm trường Custom, không cần code quá nhiều.
- Vấn đề **Bán & Cho thuê** (Vướng mắc 7) nên dùng **Lựa chọn 1** ngay từ bây giờ (Tạo 2 Pipelines riêng biệt). Việc tạo lời nhắc hết hạn (Lựa chọn 2) là tính năng nâng cao, có thể đưa vào Giai đoạn 2.
