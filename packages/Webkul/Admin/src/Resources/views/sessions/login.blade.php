<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập - Smart CRM</title>
    <!-- Tailwind CSS (via CDN) -->
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap"
        rel="stylesheet">
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    fontFamily: { sans: ['"Plus Jakarta Sans"', 'sans-serif'] },
                }
            }
        }
    </script>
    <style>
        body {
            font-family: 'Plus Jakarta Sans', sans-serif;
            background-color: #f1f5f9;
        }

        .mesh-bg {
            background-color: #4F46E5;
            background-image:
                radial-gradient(at 0% 0%, hsla(253, 16%, 7%, 0.1) 0, transparent 50%),
                radial-gradient(at 50% 0%, hsla(225, 39%, 30%, 0.2) 0, transparent 50%),
                radial-gradient(at 100% 0%, hsla(339, 49%, 30%, 0.2) 0, transparent 50%);
        }
    </style>
</head>

<body class="min-h-screen flex items-center justify-center relative overflow-hidden bg-slate-100 text-slate-800">

    <!-- Decorative Background -->
    <div class="fixed inset-0 z-0 pointer-events-none">
        <div
            class="absolute top-[-10%] left-[-10%] w-[500px] h-[500px] bg-indigo-500/20 rounded-full blur-3xl mix-blend-multiply">
        </div>
        <div
            class="absolute bottom-[-10%] right-[-10%] w-[500px] h-[500px] bg-sky-500/20 rounded-full blur-3xl mix-blend-multiply">
        </div>
    </div>

    <!-- Main Card Container -->
    <div
        class="relative z-10 w-full max-w-5xl mx-4 flex flex-col md:flex-row shadow-2xl shadow-indigo-500/10 rounded-[32px] overflow-hidden bg-white min-h-[600px]">

        <!-- Left Side: Branding -->
        <div class="hidden md:flex md:w-5/12 mesh-bg p-12 flex-col justify-between text-white relative">
            <div class="relative z-10">
                <div class="flex items-center gap-3 mb-10">
                    <div
                        class="w-12 h-12 bg-white rounded-2xl flex items-center justify-center text-indigo-600 font-bold text-2xl shadow-lg">
                        K</div>
                    <span class="text-2xl font-bold tracking-tight">Smart CRM</span>
                </div>

                <h2 class="text-4xl font-extrabold mb-6 leading-[1.2]">Bứt phá doanh thu<br>cùng công nghệ.</h2>
                <p class="text-indigo-100/90 leading-relaxed max-w-sm">
                    Xây dựng nền tảng quản trị khách hàng chuẩn mực. Phân quyền chặt chẽ, tự động hóa quy trình và đo
                    lường minh bạch.
                </p>
            </div>

            <div class="relative z-10">
                <div
                    class="flex items-center gap-4 text-xs font-bold text-indigo-200 uppercase tracking-widest pl-3 border-l-2 border-indigo-400">
                    Hệ thống Quản trị BĐS
                </div>
            </div>
        </div>

        <!-- Right Side: Login Form -->
        <div class="w-full md:w-7/12 p-8 sm:p-12 lg:p-14 flex flex-col justify-center bg-white relative">

            <!-- Mobile Header -->
            <div class="flex md:hidden items-center gap-3 mb-8">
                <div
                    class="w-10 h-10 bg-indigo-600 rounded-xl flex items-center justify-center text-white font-bold text-xl shadow-lg shadow-indigo-600/30">
                    C</div>
                <span class="text-2xl font-bold text-slate-800 tracking-tight">Smart-CRM</span>
            </div>

            <div class="mb-4">
                <h1 class="text-3xl font-bold text-slate-900 mb-2">Đăng nhập tài khoản 👋</h1>
                <p class="text-slate-500 text-sm">Truy cập vào hệ thống để bắt đầu ngày làm việc hiệu quả.</p>
            </div>

            <!-- Global Errors Handling -->
            @if ($errors->any())
                <div
                    class="mb-6 px-4 py-3 bg-red-50 border border-red-200 text-red-600 text-sm rounded-xl font-medium flex flex-col gap-1 shadow-sm">
                    @foreach ($errors->all() as $error)
                        <span class="flex items-center gap-2"><svg class="w-4 h-4" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd"
                                    d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7 4a1 1 0 11-2 0 1 1 0 012 0zm-1-9a1 1 0 00-1 1v4a1 1 0 102 0V6a1 1 0 00-1-1z"
                                    clip-rule="evenodd"></path>
                            </svg> {{ $error }}</span>
                    @endforeach
                </div>
            @endif

            <!-- Krayin Login Form -->
            <form id="login-form" method="POST" action="{{ route('admin.session.store') }}" class="space-y-5">
                @csrf

                <div>
                    <label class="block text-sm font-bold text-slate-700 mb-2" for="email">Địa chỉ Email</label>
                    <input
                        class="w-full px-4 py-3.5 rounded-xl bg-white border border-slate-200 focus:border-indigo-600 focus:ring-4 focus:ring-indigo-600/10 transition-all outline-none font-medium text-slate-700 shadow-sm"
                        id="email" type="email" name="email" value="{{ old('email') }}" required
                        placeholder="name@company.com">
                </div>

                <div>
                    <div class="flex items-center justify-between mb-2">
                        <label class="block text-sm font-bold text-slate-700" for="password">Mật khẩu</label>
                        <a href="{{ route('admin.forgot_password.create') }}"
                            class="text-xs font-bold text-indigo-600 hover:text-indigo-800 transition-colors">Quên mật
                            khẩu?</a>
                    </div>
                    <div class="relative">
                        <input
                            class="w-full px-4 py-3.5 rounded-xl bg-white border border-slate-200 focus:border-indigo-600 focus:ring-4 focus:ring-indigo-600/10 transition-all outline-none font-medium text-slate-700 shadow-sm pr-12"
                            id="password" type="password" name="password" required placeholder="••••••••">
                        <button type="button" onclick="togglePassword()"
                            class="absolute right-4 top-1/2 -translate-y-1/2 text-slate-400 hover:text-indigo-600 focus:outline-none transition-colors">
                            <svg id="eye-icon" class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z">
                                </path>
                            </svg>
                        </button>
                    </div>
                </div>

                <div class="pt-2">
                    <button type="submit"
                        class="w-full bg-indigo-600 hover:bg-indigo-700 text-white font-bold py-4 px-4 rounded-xl shadow-lg shadow-indigo-600/30 transition-all active:scale-[0.98] focus:ring-4 focus:ring-indigo-600/20 flex items-center justify-center gap-2">
                        Hệ Thống Đăng Nhập
                        <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M14 5l7 7m0 0l-7 7m7-7H3"></path>
                        </svg>
                    </button>
                </div>
            </form>

            <!-- QUICK LOGIN FEATURE -->
            <div class="mt-8 p-4 bg-slate-50 rounded-2xl border border-slate-100">
                <p class="text-[11px] font-bold text-slate-400 uppercase tracking-wider mb-3 text-center">Tài khoản DEMO</p>
                <div class="flex flex-wrap gap-2">
                    <button type="button" onclick="quickLogin('admin@example.com', 'admin123')"
                        class="flex-1 min-w-[30%] py-2 xl:px-4 bg-white border border-slate-200 hover:border-indigo-500 hover:shadow-md hover:-translate-y-0.5 rounded-xl text-xs font-bold text-slate-700 transition-all flex flex-col items-center justify-center gap-1.5 h-16">
                        <span class="w-5 h-5 rounded full bg-red-100 text-red-600 flex justify-center items-center"><svg
                                class="w-3 h-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z">
                                </path>
                            </svg></span>
                        Admin
                    </button>
                    <button type="button" onclick="quickLogin('manager@krayin.com', '12345678')"
                        class="flex-1 min-w-[30%] py-2 xl:px-4 bg-white border border-slate-200 hover:border-indigo-500 hover:shadow-md hover:-translate-y-0.5 rounded-xl text-xs font-bold text-slate-700 transition-all flex flex-col items-center justify-center gap-1.5 h-16">
                        <span
                            class="w-5 h-5 rounded full bg-purple-100 text-purple-600 flex justify-center items-center"><svg
                                class="w-3 h-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z">
                                </path>
                            </svg></span>
                        Trưởng Phòng KD
                    </button>
                    <button type="button" onclick="quickLogin('sale1@krayin.com', '12345678')"
                        class="flex-1 min-w-[30%] py-2 xl:px-4 bg-white border border-slate-200 hover:border-indigo-500 hover:shadow-md hover:-translate-y-0.5 rounded-xl text-xs font-bold text-slate-700 transition-all flex flex-col items-center justify-center gap-1.5 h-16">
                        <span
                            class="w-5 h-5 rounded full bg-emerald-100 text-emerald-600 flex justify-center items-center"><svg
                                class="w-3 h-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z">
                                </path>
                            </svg></span>
                        Nhân viên Sales
                    </button>
                </div>
            </div>
        </div>
    </div>

    <!-- Script to toggle Password Visibility & Quick Login Action -->
    <script>
        function togglePassword() {
            const pwd = document.getElementById('password');
            const icon = document.getElementById('eye-icon');
            if (pwd.type === 'password') {
                pwd.type = 'text';
                icon.innerHTML = '<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13.875 18.825A10.05 10.05 0 0112 19c-4.478 0-8.268-2.943-9.543-7a9.97 9.97 0 011.563-3.029m5.858.908a3 3 0 114.243 4.243M9.878 9.878l4.242 4.242M9.88 9.88l-3.29-3.29m7.532 7.532l3.29 3.29M3 3l3.59 3.59m0 0A9.953 9.953 0 0112 5c4.478 0 8.268 2.943 9.543 7a10.025 10.025 0 01-4.132 5.411m0 0L21 21"></path>';
            } else {
                pwd.type = 'password';
                icon.innerHTML = '<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"></path>';
            }
        }

        function quickLogin(email, password) {
            document.getElementById('email').value = email;
            document.getElementById('password').value = password;

            // Add a styling cue when clicked
            document.getElementById('email').classList.add('border-indigo-600', 'ring-4', 'ring-indigo-600/20');
            document.getElementById('password').classList.add('border-indigo-600', 'ring-4', 'ring-indigo-600/20');

            setTimeout(() => {
                document.getElementById('login-form').submit();
            }, 300); // 300ms delay to see the transition
        }
    </script>
</body>

</html>