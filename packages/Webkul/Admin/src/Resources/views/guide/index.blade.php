<!DOCTYPE html>
<html lang="vi" class="scroll-smooth">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cẩm Nang Krayin CRM</title>
    <!-- Tailwind CSS (via CDN để không phụ thuộc luồng Build gốc của Krayin) -->
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap"
        rel="stylesheet">
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    fontFamily: { sans: ['"Plus Jakarta Sans"', 'sans-serif'] },
                    colors: { primary: '#4F46E5', secondary: '#0EA5E9' }
                }
            }
        }
    </script>
    <style>
        body {
            background-color: #F8FAFC;
        }

        .glass-nav {
            background: rgba(255, 255, 255, 0.8);
            backdrop-filter: blur(16px);
            border-bottom: 1px solid rgba(226, 232, 240, 0.8);
        }

        .text-gradient {
            background: linear-gradient(135deg, #4F46E5, #ec4899);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .mesh-bg {
            background-image:
                radial-gradient(at 0% 0%, hsla(253, 16%, 7%, 0.03) 0, transparent 50%),
                radial-gradient(at 50% 0%, hsla(225, 39%, 30%, 0.03) 0, transparent 50%),
                radial-gradient(at 100% 0%, hsla(339, 49%, 30%, 0.04) 0, transparent 50%);
        }

        .bento-card {
            background: #ffffff;
            border-radius: 24px;
            padding: 32px;
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.02), 0 2px 4px -1px rgba(0, 0, 0, 0.02);
            border: 1px solid rgba(226, 232, 240, 0.8);
            transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        }

        .bento-card:hover {
            transform: translateY(-4px);
            box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.05), 0 10px 10px -5px rgba(0, 0, 0, 0.02);
            border-color: #e2e8f0;
        }

        .icon-box {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 48px;
            height: 48px;
            border-radius: 16px;
            margin-bottom: 20px;
        }

        .sidebar-link.active {
            background-color: #EEF2FF;
            color: #4F46E5;
            font-weight: 600;
            border-right: 3px solid #4F46E5;
        }
    </style>
</head>

<body class="mesh-bg text-slate-700 antialiased selection:bg-indigo-100 selection:text-indigo-900">

    <!-- Navbar -->
    <nav class="glass-nav fixed w-full z-50 top-0 transition-all duration-300">
        <div class="max-w-7xl mx-auto px-6 lg:px-8">
            <div class="flex items-center justify-between h-20">
                <div class="flex items-center gap-4">
                    <div
                        class="w-10 h-10 rounded-xl bg-gradient-to-br from-indigo-600 to-sky-500 flex items-center justify-center text-white shadow-lg shadow-indigo-500/30">
                        <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M12 6V4m0 2a2 2 0 100 4m0-4a2 2 0 110 4m-6 8a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4m6 6v10m6-2a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4">
                            </path>
                        </svg>
                    </div>
                    <span class="font-bold text-xl tracking-tight text-slate-900">Cẩm Nang <span
                            class="text-gradient">Krayin CRM</span></span>
                </div>
                <div>
                    <!-- Back to System Button -->
                    <a href="{{ route('admin.dashboard.index') }}"
                        class="inline-flex items-center gap-2 px-5 py-2.5 rounded-full bg-white border border-slate-200 text-slate-700 hover:bg-slate-50 hover:text-indigo-600 hover:border-indigo-200 font-semibold text-sm transition-all shadow-sm">
                        <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M10 19l-7-7m0 0l7-7m-7 7h18"></path>
                        </svg>
                        Trở lại Hệ Thống (Trang Chủ)
                    </a>
                </div>
            </div>
        </div>
    </nav>

    <div class="pt-32 pb-24 max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 flex flex-col lg:flex-row gap-12">

        <!-- Sidebar Navigation -->
        <div class="lg:w-1/4 relative">
            <div class="sticky top-28 space-y-1">
                <h4 class="text-xs font-bold text-slate-400 uppercase tracking-widest mb-4 px-4">Định Hướng</h4>
                <nav id="scroll-spy-nav" class="flex flex-col gap-1">
                    <a href="#phan-1"
                        class="sidebar-link active flex items-center gap-3 py-3 px-4 rounded-xl text-slate-600 hover:bg-slate-100 transition-all font-medium text-sm">
                        Cơ Cấu Tổ Chức & Phân Quyền
                    </a>
                    <a href="#phan-2"
                        class="sidebar-link flex items-center gap-3 py-3 px-4 rounded-xl text-slate-600 hover:bg-slate-100 transition-all font-medium text-sm">
                        Dữ Liệu Đầu Vào Bắt Buộc
                    </a>
                    <a href="#phan-3"
                        class="sidebar-link flex items-center gap-3 py-3 px-4 rounded-xl text-slate-600 hover:bg-slate-100 transition-all font-medium text-sm">
                        Xây Dựng Khung Kanban
                    </a>
                    <a href="#phan-4"
                        class="sidebar-link flex items-center gap-3 py-3 px-4 rounded-xl text-slate-600 hover:bg-slate-100 transition-all font-medium text-sm">
                        Nghiệp Vụ Dành Cho Sales
                    </a>
                </nav>

                <div
                    class="mt-8 p-6 bg-gradient-to-br from-indigo-50 to-pink-50 rounded-2xl border border-indigo-100/50">
                    <h5 class="text-sm font-bold text-indigo-900 mb-2">💡 Cần hỗ trợ Thêm?</h5>
                    <p class="text-xs text-indigo-700 leading-relaxed mb-4">
                        Thiết lập Krayin cần sự chính xác để mọi phân quyền hoạt động. Nhớ Setup theo đúng thứ tự
                        1-2-3-4 nhé.
                    </p>
                </div>
            </div>
        </div>

        <!-- Main Content (Bento Grid Style) -->
        <div class="lg:w-3/4 space-y-16">

            <!-- Hero Text -->
            <div class="mb-12">
                <h1 class="text-4xl md:text-5xl font-extrabold text-slate-900 tracking-tight mb-4">
                    Thiết lập cỗ máy Sales <br><span class="text-gradient">của riêng bạn.</span>
                </h1>
                <p class="text-lg text-slate-500 max-w-2xl leading-relaxed">Bộ tài liệu được thiết kế tối giản, tập
                    trung vào trọng tâm giúp bạn làm chủ phần mềm Krayin CRM chỉ trong vòng 15 phút.</p>
            </div>

            <!-- Cụm 1 -->
            <section id="phan-1" class="scroll-mt-32">
                <h2 class="text-2xl font-bold text-slate-900 mb-8 flex items-center gap-3">
                    <span
                        class="w-8 h-8 rounded-full bg-slate-900 text-white flex justify-center items-center text-sm">1</span>
                    Cơ Cấu Tổ Chức & Phân Quyền
                </h2>

                <div class="grid md:grid-cols-2 gap-6">
                    <div class="bento-card">
                        <div class="icon-box bg-blue-50 text-blue-600">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z">
                                </path>
                            </svg>
                        </div>
                        <h3 class="text-lg font-bold text-slate-900 mb-2">1. Định hình Nhóm (Groups)</h3>
                        <p class="text-sm text-slate-500 mb-4 leading-relaxed">Đại diện cho phòng ban thực tế tại công
                            ty của bạn.</p>
                        <div
                            class="p-3 bg-slate-50 rounded-lg text-xs font-mono text-slate-600 border border-slate-100">
                            ⚙️ Cài đặt → Nhóm → + Tạo Nhóm
                        </div>
                    </div>

                    <div class="bento-card">
                        <div class="icon-box bg-purple-50 text-purple-600">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z">
                                </path>
                            </svg>
                        </div>
                        <h3 class="text-lg font-bold text-slate-900 mb-2">2. Cấu hình Vai Trò (Roles)</h3>
                        <p class="text-sm text-slate-500 mb-4 leading-relaxed">Phân chia quyền "Toàn Cầu", "Theo Nhóm"
                            hoặc "Cá Nhân". Tích cấp phép Modules.</p>
                        <div
                            class="p-3 bg-slate-50 rounded-lg text-xs font-mono text-slate-600 border border-slate-100">
                            ⚙️ Cài đặt → Vai Trò → + Tạo Vai Trò
                        </div>
                    </div>

                    <div class="bento-card md:col-span-2 bg-slate-900 text-white border-transparent">
                        <div class="flex flex-col md:flex-row md:items-center justify-between gap-6">
                            <div>
                                <h3 class="text-xl font-bold mb-2 flex items-center gap-2">
                                    <div class="w-2 h-2 bg-emerald-400 rounded-full animate-pulse"></div> 3. Kết nạp
                                    Người Dùng (Users)
                                </h3>
                                <p class="text-slate-400 text-sm max-w-lg">Bước cuối của Phân quyền. Tạo tài khoản cho
                                    nhân viên đăng nhập. Nhớ gán nhân viên đó vào đúng <b>Nhóm</b> và <b>Vai Trò</b> vừa
                                    khởi tạo ở Bước 1 và Bước 2 để hệ thống ăn khớp.</p>
                            </div>
                            <div
                                class="shrink-0 p-4 bg-white/10 rounded-xl backdrop-blur-md border border-white/10 text-xs font-mono">
                                ⚙️ Cài Đặt → Người Dùng
                            </div>
                        </div>
                    </div>
                </div>
            </section>


            <!-- Cụm 2 -->
            <section id="phan-2" class="scroll-mt-32">
                <h2 class="text-2xl font-bold text-slate-900 mb-8 flex items-center gap-3">
                    <span
                        class="w-8 h-8 rounded-full bg-slate-900 text-white flex justify-center items-center text-sm">2</span>
                    Dữ Liệu Đầu Vào Cơ Bản
                </h2>

                <div class="grid md:grid-cols-3 gap-6">
                    <div class="bento-card md:col-span-1 border-emerald-100 bg-emerald-50/30 hover:bg-emerald-50/60">
                        <div class="text-emerald-600 mb-4">
                            <svg class="w-8 h-8" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z">
                                </path>
                            </svg>
                        </div>
                        <h3 class="font-bold text-slate-900 mb-2">Trường Tùy Chỉnh</h3>
                        <p class="text-sm text-slate-500 mb-3 leading-relaxed">Thêm các thuộc tính tùy ý cho doanh
                            nghiệp (Vd: Khách mua xe cần thêm trường hãng xe).</p>
                        <span
                            class="inline-block text-[10px] font-bold tracking-wider uppercase text-emerald-600 bg-emerald-100 px-2 py-1 rounded">Tự
                            Động Hóa > Thuộc Tính</span>
                    </div>

                    <div class="bento-card md:col-span-1 border-orange-100 bg-orange-50/30 hover:bg-orange-50/60">
                        <div class="text-orange-500 mb-4">
                            <svg class="w-8 h-8" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M20 7l-8-4-8 4m16 0l-8 4m8-4v10l-8 4m0-10L4 7m8 4v10M4 7v10l8 4"></path>
                            </svg>
                        </div>
                        <h3 class="font-bold text-slate-900 mb-2">Sản Phẩm & Kho</h3>
                        <p class="text-sm text-slate-500 mb-3 leading-relaxed">Nhập Danh sách các Sản phẩm/Dịch vụ để
                            Sales có thể add vào Báo giá nhanh chóng.</p>
                        <span
                            class="inline-block text-[10px] font-bold tracking-wider uppercase text-orange-600 bg-orange-100 px-2 py-1 rounded">Menu
                            Trái > Sản Phẩm</span>
                    </div>

                    <div class="bento-card md:col-span-1 border-pink-100 bg-pink-50/30 hover:bg-pink-50/60">
                        <div class="text-pink-500 mb-4">
                            <svg class="w-8 h-8" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z">
                                </path>
                            </svg>
                        </div>
                        <h3 class="font-bold text-slate-900 mb-2">Phân loại Lead</h3>
                        <p class="text-sm text-slate-500 mb-3 leading-relaxed">Định nghĩa các <b>Nguồn</b> (FB, Giới
                            thiệu) và <b>Loại</b> (Cá nhân, Vip) để Đo lường.</p>
                        <span
                            class="inline-block text-[10px] font-bold tracking-wider uppercase text-pink-600 bg-pink-100 px-2 py-1 rounded">Cài
                            Đặt Lead > Nguồn/Loại</span>
                    </div>
                </div>
            </section>


            <!-- Cụm 3 -->
            <section id="phan-3" class="scroll-mt-32">
                <h2 class="text-2xl font-bold text-slate-900 mb-6 flex items-center gap-3">
                    <span
                        class="w-8 h-8 rounded-full bg-slate-900 text-white flex justify-center items-center text-sm">3</span>
                    Xây Dựng Khung Kanban Giai Đoạn
                </h2>

                <div class="bento-card overflow-hidden p-0 relative group">
                    <div class="p-8 pb-32">
                        <h3 class="text-xl font-bold text-slate-900 mb-2">Quy Trình Bán Hàng (Pipeline)</h3>
                        <p class="text-slate-500 text-sm max-w-xl">Đây là bảng làm việc dạng kéo-thả chứa toàn bỗ phễu
                            khách hàng. Vào <b>Cài Đặt > Khách Hàng Tiềm Năng (Lead) > Quy Trình</b> để set up các cột
                            Stages (1-2-3-4-5).</p>
                    </div>

                    <div
                        class="absolute bottom-0 left-0 right-0 p-8 pt-0 flex gap-4 overflow-x-auto snap-x hide-scrollbars">
                        <div
                            class="shrink-0 w-48 h-32 bg-white rounded-xl shadow-lg border border-slate-100 p-4 transform transition-transform group-hover:-translate-y-4 duration-300 relative">
                            <div class="flex items-center justify-between mb-2">
                                <span class="text-xs font-bold text-slate-400">STAGE 1</span>
                                <div class="w-2 h-2 rounded-full bg-blue-500"></div>
                            </div>
                            <h4 class="font-bold text-slate-800">Tiếp nhận Mới</h4>
                            <div class="w-full h-8 mt-3 bg-slate-50 border border-dashed border-slate-200 rounded">
                            </div>
                        </div>

                        <div
                            class="shrink-0 w-48 h-32 bg-white rounded-xl shadow-lg border border-slate-100 p-4 transform transition-transform group-hover:-translate-y-4 duration-300 delay-75 relative">
                            <div class="flex items-center justify-between mb-2">
                                <span class="text-xs font-bold text-slate-400">STAGE 2</span>
                                <div class="w-2 h-2 rounded-full bg-sky-500"></div>
                            </div>
                            <h4 class="font-bold text-slate-800">Đang Tư Vấn</h4>
                            <div
                                class="w-full h-8 mt-3 bg-slate-50 border border-slate-100 rounded shadow-sm flex items-center px-2">
                                <div class="w-3/4 h-2 bg-slate-200 rounded"></div>
                            </div>
                        </div>

                        <div
                            class="shrink-0 w-48 h-32 bg-white rounded-xl shadow-lg border border-slate-100 p-4 transform transition-transform group-hover:-translate-y-4 duration-300 delay-100 relative">
                            <div class="flex items-center justify-between mb-2">
                                <span class="text-xs font-bold text-slate-400">STAGE 3</span>
                                <div class="w-2 h-2 rounded-full bg-purple-500"></div>
                            </div>
                            <h4 class="font-bold text-slate-800">Gửi Báo Giá</h4>
                            <div
                                class="w-full h-8 mt-3 bg-slate-50 border border-slate-100 rounded shadow-sm flex items-center px-2">
                                <div class="w-1/2 h-2 bg-slate-200 rounded"></div>
                            </div>
                        </div>

                        <div
                            class="shrink-0 w-48 h-32 bg-white rounded-xl shadow-lg border border-slate-100 p-4 transform transition-transform group-hover:-translate-y-4 duration-300 delay-150 relative ring-2 ring-emerald-400 ring-offset-2">
                            <div class="flex items-center justify-between mb-2">
                                <span class="text-xs font-bold text-emerald-500">ĐÓNG = THẮNG</span>
                                <div class="w-2 h-2 rounded-full bg-emerald-500"></div>
                            </div>
                            <h4 class="font-bold text-slate-800">Chốt Đơn</h4>
                            <p class="text-[10px] text-slate-400 mt-2 leading-tight">Yêu cầu check Box: Đóng trạng thái
                                (Closed).</p>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Cụm 4 -->
            <section id="phan-4" class="scroll-mt-32">
                <h2 class="text-2xl font-bold text-slate-900 mb-8 flex items-center gap-3">
                    <span
                        class="w-8 h-8 rounded-full bg-slate-900 text-white flex justify-center items-center text-sm">4</span>
                    Nghiệp Vụ Dành Cho Sales
                </h2>

                <div class="grid md:grid-cols-2 gap-6">
                    <div class="bento-card group flex items-start gap-5">
                        <div
                            class="w-12 h-12 rounded-xl bg-slate-100 text-slate-600 flex items-center justify-center shrink-0 group-hover:bg-indigo-600 group-hover:text-white transition-colors">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z">
                                </path>
                            </svg>
                        </div>
                        <div>
                            <h4 class="font-bold text-slate-900 mb-1">Khách Hàng Tiềm Năng (Leads)</h4>
                            <p class="text-sm text-slate-500 leading-relaxed">Nơi chứa khách hàng. Click vào khách hàng
                                để thêm Ghi chú tương tác hoặc Add Sản phẩm muốn báo giá.</p>
                        </div>
                    </div>

                    <div class="bento-card group flex items-start gap-5">
                        <div
                            class="w-12 h-12 rounded-xl bg-slate-100 text-slate-600 flex items-center justify-center shrink-0 group-hover:bg-emerald-500 group-hover:text-white transition-colors">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z">
                                </path>
                            </svg>
                        </div>
                        <div>
                            <h4 class="font-bold text-slate-900 mb-1">Quản lý Lịch Hẹn (Activities)</h4>
                            <p class="text-sm text-slate-500 leading-relaxed">Bộ nhắc lịch thông minh cho dân Sales. Gắn
                                nhắc lịch "Gọi Gọi, Họp, Check-in" tránh quên khách.</p>
                        </div>
                    </div>

                    <div class="bento-card group flex items-start gap-5">
                        <div
                            class="w-12 h-12 rounded-xl bg-slate-100 text-slate-600 flex items-center justify-center shrink-0 group-hover:bg-pink-500 group-hover:text-white transition-colors">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z">
                                </path>
                            </svg>
                        </div>
                        <div>
                            <h4 class="font-bold text-slate-900 mb-1">Menu Báo Giá (Quotes)</h4>
                            <p class="text-sm text-slate-500 leading-relaxed">Cho phép tạo, Download PDF báo giá chuyên
                                nghiệp gắn logo Công ty in thẳng từ hệ thống.</p>
                        </div>
                    </div>

                    <div class="bento-card group flex items-start gap-5">
                        <div
                            class="w-12 h-12 rounded-xl bg-slate-100 text-slate-600 flex items-center justify-center shrink-0 group-hover:bg-amber-500 group-hover:text-white transition-colors">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M19 21V5a2 2 0 00-2-2H7a2 2 0 00-2 2v16m14 0h2m-2 0h-5m-9 0H3m2 0h5M9 7h1m-1 4h1m4-4h1m-1 4h1m-5 10v-5a1 1 0 011-1h2a1 1 0 011 1v5m-4 0h4">
                                </path>
                            </svg>
                        </div>
                        <div>
                            <h4 class="font-bold text-slate-900 mb-1">Danh Bạ Liên Hệ (Contacts)</h4>
                            <p class="text-sm text-slate-500 leading-relaxed">Nơi lưu trữ danh sách khách VIP trọn đời
                                một khi Lead đã thành công hoặc thiết lập trực tiếp.</p>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Final System Setup Alert -->
            <div
                class="p-8 rounded-3xl bg-indigo-600 text-white shadow-xl shadow-indigo-600/20 relative overflow-hidden mt-20">
                <div class="absolute top-0 right-0 p-12 opacity-10">
                    <svg class="w-48 h-48" fill="currentColor" viewBox="0 0 24 24">
                        <path
                            d="M12 0c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm0 22c-5.514 0-10-4.486-10-10s4.486-10 10-10 10 4.486 10 10-4.486 10-10 10zm-2-14.5v9l6-4.5-6-4.5z" />
                    </svg>
                </div>
                <div class="relative z-10">
                    <h3 class="text-2xl font-bold mb-3 drop-shadow-md">📌 Tinh Chỉnh Hệ Thống Lần Cuối</h3>
                    <p class="text-indigo-100 mb-6 max-w-2xl leading-relaxed">Truy cập vào <strong
                            class="text-white">Cài Đặt > Cấu hình (Configuration)</strong> để hoàn tất thay <b>Logo hệ
                            thống</b>, <b>Ký hiệu Tiền tệ</b>, <b>Múi Giờ</b> và Set cấu hình Email IMAP tự động nếu
                        Công ty bạn sử dụng Mail Marketing.</p>
                </div>
            </div>

        </div>
    </div>

    <!-- Script for scroll spy -->
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const sections = document.querySelectorAll('section');
            const navLinks = document.querySelectorAll('.sidebar-link');

            window.addEventListener('scroll', () => {
                let current = '';
                sections.forEach(section => {
                    const sectionTop = section.offsetTop;
                    if (pageYOffset >= sectionTop - 150) {
                        current = section.getAttribute('id');
                    }
                });

                navLinks.forEach(link => {
                    link.classList.remove('active');
                    if (link.getAttribute('href').includes(current)) {
                        link.classList.add('active');
                    }
                });
            });
        });
    </script>
</body>

</html>