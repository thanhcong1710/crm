<div class="flex flex-col gap-4 p-4 dark:text-white">
    <div class="flex items-center justify-between">
        <h3 class="text-lg font-bold">Danh sách Bất Động Sản Đã Sở Hữu</h3>
    </div>

    @if($wonDeals && $wonDeals->count() > 0)
        <div class="table-responsive">
            <table class="w-full text-left text-sm text-gray-500 dark:text-gray-400">
                <thead class="bg-gray-50 text-xs uppercase text-gray-700 dark:bg-gray-700 dark:text-gray-400">
                    <tr>
                        <th scope="col" class="px-6 py-3">Ngày chốt cọc</th>
                        <th scope="col" class="px-6 py-3">Mã Căn / Phân Khu</th>
                        <th scope="col" class="px-6 py-3">Giá trị giao dịch</th>
                        <th scope="col" class="px-6 py-3">Sales phụ trách</th>
                        <th scope="col" class="px-6 py-3">Hành động</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($wonDeals as $deal)
                        <tr class="border-b bg-white dark:border-gray-700 dark:bg-gray-800">
                            <td class="px-6 py-4">
                                {{ $deal->closed_at ? \Carbon\Carbon::parse($deal->closed_at)->format('d/m/Y') : 'N/A' }}
                            </td>
                            <td class="px-6 py-4 font-medium text-gray-900 dark:text-white">
                                @if($deal->products->count() > 0)
                                    @foreach($deal->products as $leadProduct)
                                        <a href="{{ route('admin.products.view', $leadProduct->product->id) }}"
                                            class="text-blue-600 hover:underline" target="_blank">
                                            {{ $leadProduct->product->sku ?: $leadProduct->name }}
                                        </a><br>
                                    @endforeach
                                @else
                                    <span class="text-gray-400 italic">Chưa map sản phẩm</span>
                                @endif
                            </td>
                            <td class="px-6 py-4">
                                {{ core()->formatBasePrice($deal->lead_value) }}
                            </td>
                            <td class="px-6 py-4">
                                {{ $deal->user ? $deal->user->name : '--' }}
                            </td>
                            <td class="px-6 py-4">
                                <a href="{{ route('admin.leads.view', $deal->id) }}" class="text-brandColor hover:underline"
                                    target="_blank">Xem Deal</a>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    @else
        <div class="flex flex-col items-center justify-center p-8 text-center text-gray-500">
            <span class="icon-calendar text-4xl mb-2"></span>
            <p>Khách hàng này chưa có giao dịch nào thành công.</p>
        </div>
    @endif
</div>