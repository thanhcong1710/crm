<x-admin::layouts>
    <x-slot:title>
        Quản lý Hoa Hồng
        </x-slot>

        <div class="flex flex-col gap-4">
            <div class="flex items-center justify-between gap-4 max-sm:flex-wrap">
                <div class="flex items-center gap-2">
                    <div class="flex flex-col gap-1">
                        <h1 class="text-xl font-bold dark:text-gray-300">
                            Quản lý Hoa Hồng (Commissions)
                        </h1>
                    </div>
                </div>

                <div class="flex items-center gap-2">
                    <!-- Add actions if needed like Generate or Export -->
                </div>
            </div>

            <!-- Statistics Cards -->
            <div class="flex gap-4 mb-4">
                <div class="flex-1 bg-white dark:bg-gray-900 border dark:border-gray-800 p-4 rounded-lg shadow-sm">
                    <div class="text-gray-600 dark:text-gray-400 text-sm font-medium">Tổng số giao dịch</div>
                    <div class="text-2xl font-bold mt-1">{{ $statistics['total_count'] }}</div>
                </div>
                <div
                    class="flex-1 bg-white dark:bg-gray-900 border dark:border-gray-800 p-4 rounded-lg shadow-sm border-l-4 border-l-yellow-500">
                    <div class="text-gray-600 dark:text-gray-400 text-sm font-medium">Hoa hồng chờ thanh toán</div>
                    <div class="text-2xl font-bold mt-1 text-yellow-600">
                        {{ core()->formatBasePrice($statistics['total_pending']) }}</div>
                </div>
                <div
                    class="flex-1 bg-white dark:bg-gray-900 border dark:border-gray-800 p-4 rounded-lg shadow-sm border-l-4 border-l-green-500">
                    <div class="text-gray-600 dark:text-gray-400 text-sm font-medium">Hoa hồng đã thanh toán</div>
                    <div class="text-2xl font-bold mt-1 text-green-600">
                        {{ core()->formatBasePrice($statistics['total_paid']) }}</div>
                </div>
            </div>

            <div class="flex flex-col gap-2">
                <x-admin::datagrid :src="route('admin.commissions.index')" />
            </div>
        </div>
</x-admin::layouts>