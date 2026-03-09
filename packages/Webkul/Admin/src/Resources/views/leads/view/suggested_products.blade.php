<v-suggested-products></v-suggested-products>

@pushOnce('scripts')
    <script type="text/x-template" id="v-suggested-products-template">
                <div class="flex flex-col gap-4 p-4 dark:text-white">
                    <div class="flex items-center justify-between">
                        <h3 class="text-lg font-bold">Gợi ý Bất Động Sản (Dựa trên Tiêu chí khách)</h3>
                    </div>

                    <div v-if="suggestedProducts.length" class="flex flex-col gap-4">
                        <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                            <div v-for="(sp, index) in visibleProducts" :key="sp.id" class="border rounded shadow-sm p-4 dark:border-gray-700 bg-white dark:bg-gray-800 flex justify-between items-center transition hover:shadow-md">
                                <div class="flex-1 w-full flex flex-col gap-1">
                                    <a :href="'{{ route('admin.products.index') }}/view/' + sp.id" target="_blank" class="font-bold text-brandColor hover:underline text-base truncate block w-full">@{{ sp.name }}</a>
                                    <div class="flex gap-4 mt-1 text-sm text-gray-600 dark:text-gray-400">
                                        <span><i class="icon-calendar"></i> Mã: @{{ sp.sku }}</span>
                                        <span v-if="sp.dien_tich_m2 !== '-'"><i class="icon-location"></i> Diện tích: @{{ sp.dien_tich_m2 }} m²</span>
                                    </div>
                                    <div class="flex gap-4 mb-1 text-sm text-gray-600 dark:text-gray-400">
                                        <span v-if="sp.loai_bds !== '-'"><i class="icon-list"></i> @{{ sp.loai_bds }}</span>
                                        <span v-if="sp.vi_tri !== '-'"><i class="icon-location"></i> KV: @{{ sp.vi_tri }}</span>
                                    </div>
                                    <p class="text-brandColor font-semibold text-base">@{{ $admin.formatPrice(sp.price) }}</p>
                                </div>
                                <div class="ml-4 flex-shrink-0">
                                    <button 
                                        type="button" 
                                        @click="addToLead(sp, index)"
                                        class="secondary-button text-sm flex items-center gap-1"
                                    >
                                        <i class="icon-add"></i> Thêm vào Giỏ
                                    </button>
                                </div>
                            </div>
                        </div>

                        <div v-if="suggestedProducts.length > visibleCount" class="text-center mt-2">
                            <button type="button" @click="visibleCount += 5" class="text-brandColor hover:underline font-semibold">
                                Xem thêm (@{{ suggestedProducts.length - visibleCount }} sản phẩm)
                            </button>
                        </div>
                        <div v-if="visibleCount > 5" class="text-center mt-2">
                            <button type="button" @click="visibleCount = 5" class="text-gray-500 hover:underline">
                                Thu gọn
                            </button>
                        </div>
                    </div>
                    <div v-if="!suggestedProducts.length" class="flex flex-col items-center justify-center p-8 text-center text-gray-500">
                        <span class="icon-search text-4xl mb-2"></span>
                        <p>Không có sản phẩm nào phù hợp với tầm tài chính và tiêu chí của khách hàng này, hoặc sản phẩm đã nằm trong Giỏ Tư Vấn.</p>
                    </div>
                </div>
            </script>

    <script type="module">
        app.component('v-suggested-products', {
            template: '#v-suggested-products-template',

            data() {
                return {
                    suggestedProducts: @json($suggestedProducts),
                    visibleCount: 5
                }
            },

            computed: {
                visibleProducts() {
                    return this.suggestedProducts.slice(0, this.visibleCount);
                }
            },

            methods: {
                addToLead(product, index) {
                    this.$axios.post('{{ route('admin.leads.product.add', $lead->id) }}', {
                        _method: 'PUT',
                        product_id: product.id,
                        price: product.price,
                        quantity: 1,
                        name: product.name
                    })
                        .then(response => {
                            this.suggestedProducts.splice(index, 1);
                            this.$emitter.emit('add-flash', { type: 'success', message: 'Đã thêm ' + product.name + ' vào Giỏ Tư Vấn' });
                            setTimeout(() => window.location.reload(), 1000);
                        })
                        .catch(error => {
                            this.$emitter.emit('add-flash', { type: 'error', message: 'Có lỗi xảy ra' });
                        });
                }
            }
        });
    </script>
@endPushOnce