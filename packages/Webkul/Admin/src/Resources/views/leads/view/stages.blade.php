<!-- Stages Navigation -->
{!! view_render_event('admin.leads.view.stages.before', ['lead' => $lead]) !!}

<!-- Stages Vue Component -->
<v-lead-stages>
    <x-admin::shimmer.leads.view.stages :count="$lead->pipeline->stages->count() - 1" />
</v-lead-stages>

{!! view_render_event('admin.leads.view.stages.after', ['lead' => $lead]) !!}

@pushOnce('scripts')
    <script type="text/x-template" id="v-lead-stages-template">
                    <div class="flex flex-col gap-3">
                        <!-- Stages Container -->
                        <div
                            class="flex w-full max-w-full overflow-auto items-center gap-2"
                            :class="{'opacity-50 pointer-events-none': isUpdating}"
                        >
                            <!-- Stages Track -->
                            <div class="flex h-7 rounded-lg bg-gray-100 dark:bg-gray-800">
                        <!-- Stages Item -->
                        <template v-for="stage in stages">
                            {!! view_render_event('admin.leads.view.stages.items.before', ['lead' => $lead]) !!}

                            <div
                                class="stage relative flex h-7 cursor-pointer items-center justify-center bg-white pl-7 pr-4 dark:bg-gray-900 ltr:first:rounded-l-lg rtl:first:rounded-r-lg"
                                :class="{
                                    '!bg-green-500 text-white dark:text-gray-900 ltr:after:bg-green-500 rtl:before:bg-green-500': currentStage.sort_order >= stage.sort_order,
                                    '!bg-red-500 text-white dark:text-gray-900 ltr:after:bg-red-500 rtl:before:bg-red-500': currentStage.code == 'lost',
                                }"
                                v-if="! ['won', 'lost'].includes(stage.code)"
                                @click="update(stage)"
                            >
                                <span class="z-20 whitespace-nowrap text-sm font-medium dark:text-white">
                                    @{{ stage.name }}
                                </span>
                            </div>

                            {!! view_render_event('admin.leads.view.stages.items.after', ['lead' => $lead]) !!}
                        </template>

                            </div>

                            {!! view_render_event('admin.leads.view.stages.items.dropdown.before', ['lead' => $lead]) !!}

                            <!-- Terminal Actions (Won / Lost) inline with Stages -->
                            <div class="flex items-center gap-2 ml-2 h-7" v-if="['won', 'lost'].includes(currentStage.code)">
                                <div 
                                    v-if="currentStage.code == 'won'"
                                    class="flex items-center justify-center gap-1 rounded-lg bg-green-600 px-3 py-1 text-sm font-semibold text-white"
                                >
                                    <span class="icon-check text-white"></span> Đã Chốt Cọc
                                </div>
                                <div 
                                    v-if="currentStage.code == 'lost'"
                                    class="flex items-center justify-center gap-1 rounded-lg bg-red-600 px-3 py-1 text-sm font-semibold text-white"
                                >
                                    <span class="icon-cancel text-white"></span> Đã Từ Chối
                                </div>
                            </div>
                            <div class="flex items-center gap-2 ml-2 h-7" v-if="!['won', 'lost'].includes(currentStage.code)">
                                <button 
                                    type="button" 
                                    class="flex items-center justify-center gap-1 rounded-lg border border-green-600 text-green-600 px-3 py-1 hover:bg-green-600 hover:text-white transition-all text-sm font-medium focus:outline-none"
                                    @click="openModal(stages.find(s => s.code === 'won'))"
                                >
                                    <span class="icon-check"></span> Chốt Cọc
                                </button>
                                <button 
                                    type="button" 
                                    class="flex items-center justify-center gap-1 rounded-lg border border-red-600 text-red-600 px-3 py-1 hover:bg-red-600 hover:text-white transition-all text-sm font-medium focus:outline-none"
                                    @click="openModal(stages.find(s => s.code === 'lost'))"
                                >
                                    <span class="icon-cancel"></span> Từ Chối
                                </button>
                            </div>

                            {!! view_render_event('admin.leads.view.stages.items.dropdown.after', ['lead' => $lead]) !!}

                        <x-admin::form
                            v-slot="{ meta, errors, handleSubmit }"
                            as="div"
                            ref="stageUpdateForm"
                        >
                            <form @submit="handleSubmit($event, handleFormSubmit)">
                                {!! view_render_event('admin.leads.view.stages.form_controls.modal.before', ['lead' => $lead]) !!}

                                <x-admin::modal ref="stageUpdateModal">
                                    <x-slot:header>
                                        {!! view_render_event('admin.leads.view.stages.form_controls.modal.header.before', ['lead' => $lead]) !!}

                                        <h3 class="text-base font-semibold dark:text-white" v-if="nextStage && nextStage.code == 'won'">
                                            Thông Báo Chốt Giao Dịch
                                        </h3>
                                        <h3 class="text-base font-semibold dark:text-white" v-if="nextStage && nextStage.code == 'lost'">
                                            Xác Nhận Thất Bại / Hủy
                                        </h3>
                                        <h3 class="text-base font-semibold dark:text-white" v-if="!nextStage || !['won', 'lost'].includes(nextStage.code)">
                                            @lang('admin::app.leads.view.stages.need-more-info')
                                        </h3>

                                        {!! view_render_event('admin.leads.view.stages.form_controls.modal.header.after', ['lead' => $lead]) !!}
                                    </x-slot>

                                    <x-slot:content>
                                        {!! view_render_event('admin.leads.view.stages.form_controls.modal.content.before', ['lead' => $lead]) !!}

                                        <div v-if="nextStage" class="flex flex-col gap-3">
                                            <!-- Won UI -->
                                            <template v-if="nextStage.code == 'won'">
                                                <div class="bg-green-50 text-green-800 p-3 rounded text-sm dark:bg-gray-800 dark:text-green-400">
                                                    <i class="icon-check"></i> Bạn đang xác nhận khách hàng này đã chốt cọc/giao dịch thành công. Vui lòng điền thông tin bên dưới.
                                                </div>

                                                <x-admin::form.control-group class="!mb-2">
                                                    <x-admin::form.control-group.label class="required">
                                                        Tổng Giá trị giao dịch (VNĐ)
                                                    </x-admin::form.control-group.label>

                                                    <x-admin::form.control-group.control
                                                        type="price"
                                                        name="lead_value"
                                                        :value="$lead->lead_value"
                                                        v-model="nextStage.lead_value"
                                                        rules="required"
                                                    />
                                                    <x-admin::form.control-group.error control-name="lead_value"/>
                                                </x-admin::form.control-group>
                                            </template>

                                            <template v-if="nextStage.code == 'lost'">
                                                <!-- Lost UI -->
                                                <div class="bg-red-50 text-red-800 p-3 rounded text-sm dark:bg-gray-800 dark:text-red-400">
                                                    <i class="icon-cancel"></i> Khách hàng này không tiếp tục giao dịch. Vui lòng cung cấp lý do để lưu lại lịch sử đánh giá.
                                                </div>

                                                <x-admin::form.control-group class="!mb-2">
                                                    <x-admin::form.control-group.label class="required">
                                                        Lý do từ chối
                                                    </x-admin::form.control-group.label>

                                                    <x-admin::form.control-group.control
                                                        type="textarea"
                                                        name="lost_reason"
                                                        v-model="nextStage.lost_reason"
                                                        rules="required"
                                                        placeholder="Ví dụ: Khách chê giá cao, quy hoạch không phù hợp, đã mua dự án khác..."
                                                    />
                                                    <x-admin::form.control-group.error control-name="lost_reason"/>
                                                </x-admin::form.control-group>
                                            </template>

                                            <!-- Closed At -->
                                            <x-admin::form.control-group class="!mb-0">
                                                <x-admin::form.control-group.label class="required">
                                                    Ngày chốt trạng thái
                                                </x-admin::form.control-group.label>

                                                <x-admin::form.control-group.control
                                                    type="datetime"
                                                    name="closed_at"
                                                    v-model="nextStage.closed_at"
                                                    rules="required"
                                                    :label="trans('admin::app.leads.view.stages.closed-at')"
                                                />

                                                <x-admin::form.control-group.error control-name="closed_at"/>
                                            </x-admin::form.control-group>
                                        </div>

                                        {!! view_render_event('admin.leads.view.stages.form_controls.modal.content.after', ['lead' => $lead]) !!}
                                    </x-slot>

                                    <x-slot:footer>
                                        {!! view_render_event('admin.leads.view.stages.form_controls.modal.footer.before', ['lead' => $lead]) !!}

                                        <button
                                            type="submit"
                                            class="primary-button"
                                            :class="{'!bg-green-600 hover:!bg-green-700': nextStage && nextStage.code === 'won', '!bg-red-600 hover:!bg-red-700': nextStage && nextStage.code === 'lost'}"
                                        >
                                            Xác nhận
                                        </button>

                                        {!! view_render_event('admin.leads.view.stages.form_controls.modal.footer.after', ['lead' => $lead]) !!}
                                    </x-slot>
                                </x-admin::modal>

                                {!! view_render_event('admin.leads.view.stages.form_controls.modal.after', ['lead' => $lead]) !!}
                            </form>
                        </x-admin::form>

                        {!! view_render_event('admin.leads.view.stages.form_controls.after', ['lead' => $lead]) !!}
                        </div>
                    </div>
                </script>

    <script type="module">
        app.component('v-lead-stages', {
            template: '#v-lead-stages-template',

            data() {
                return {
                    isUpdating: false,

                    currentStage: @json($lead->stage),

                    nextStage: null,

                    stages: @json($lead->pipeline->stages),

                    stageToggler: '',
                }
            },

            methods: {
                openModal(stage) {
                    if (this.currentStage.code == stage.code) {
                        return;
                    }

                    this.nextStage = Object.assign({}, stage);

                    let d = new Date();
                    let formattedDate = d.getFullYear() + '-' + String(d.getMonth() + 1).padStart(2, '0') + '-' + String(d.getDate()).padStart(2, '0') + ' ' + String(d.getHours()).padStart(2, '0') + ':' + String(d.getMinutes()).padStart(2, '0') + ':' + String(d.getSeconds()).padStart(2, '0');
                    this.nextStage.closed_at = formattedDate;

                    if (stage.code == 'won') {
                        this.nextStage.lead_value = '{{ $lead->lead_value }}';
                    } else if (stage.code == 'lost') {
                        this.nextStage.lost_reason = '';
                    }

                    this.$refs.stageUpdateModal.open();
                },

                handleFormSubmit(event) {
                    let params = {
                        'lead_pipeline_stage_id': this.nextStage.id
                    };

                    if (this.nextStage.code == 'won') {
                        params.lead_value = this.nextStage.lead_value;

                        params.closed_at = this.nextStage.closed_at;
                    } else if (this.nextStage.code == 'lost') {
                        params.lost_reason = this.nextStage.lost_reason;

                        params.closed_at = this.nextStage.closed_at;
                    }

                    this.update(this.nextStage, params);
                },

                update(stage, params = null) {
                    if (this.currentStage.code == stage.code) {
                        return;
                    }

                    this.$refs.stageUpdateModal.close();

                    this.isUpdating = true;

                    this.$axios
                        .put("{{ route('admin.leads.stage.update', $lead->id) }}", params ?? {
                            'lead_pipeline_stage_id': stage.id
                        })
                        .then((response) => {
                            this.isUpdating = false;

                            this.currentStage = stage;

                            this.$parent.$refs.activities.get();

                            this.$emitter.emit('add-flash', { type: 'success', message: response.data.message });
                        })
                        .catch((error) => {
                            this.isUpdating = false;

                            this.$emitter.emit('add-flash', { type: 'error', message: error.response.data.message });
                        });
                },
            },
        });
    </script>
@endPushOnce