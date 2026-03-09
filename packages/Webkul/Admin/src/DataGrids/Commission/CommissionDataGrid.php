<?php

namespace Webkul\Admin\DataGrids\Commission;

use Illuminate\Support\Facades\DB;
use Webkul\DataGrid\DataGrid;

class CommissionDataGrid extends DataGrid
{
    /**
     * Prepare query builder.
     *
     * @return \Illuminate\Database\Query\Builder
     */
    public function prepareQueryBuilder()
    {
        $queryBuilder = DB::table('commission_splits')
            ->leftJoin('leads', 'commission_splits.lead_id', '=', 'leads.id')
            ->leftJoin('users', 'commission_splits.user_id', '=', 'users.id')
            ->select(
                'commission_splits.id',
                'commission_splits.role',
                'commission_splits.commission_percentage',
                'commission_splits.commission_amount',
                'commission_splits.payment_date',
                'commission_splits.status',
                'leads.title as lead_title',
                'users.name as user_name'
            );

        if (bouncer()->hasPermission('commissions.view_all')) {
            // Can view all
        } else {
            // Can only view own
            $queryBuilder->where('commission_splits.user_id', auth()->user()->id);
        }

        return $queryBuilder;
    }

    /**
     * Add columns.
     *
     * @return void
     */
    public function prepareColumns()
    {
        $this->addColumn([
            'index' => 'id',
            'label' => trans('admin::app.datagrid.id'),
            'type' => 'integer',
            'searchable' => false,
            'sortable' => true,
            'filterable' => true,
        ]);

        $this->addColumn([
            'index' => 'lead_title',
            'label' => 'Tên Giao Dịch',
            'type' => 'string',
            'searchable' => true,
            'sortable' => true,
            'filterable' => true,
        ]);

        $this->addColumn([
            'index' => 'user_name',
            'label' => 'Người nhận',
            'type' => 'string',
            'searchable' => true,
            'sortable' => true,
            'filterable' => true,
        ]);

        $this->addColumn([
            'index' => 'role',
            'label' => 'Vai trò',
            'type' => 'string',
            'searchable' => true,
            'sortable' => true,
            'filterable' => true,
        ]);

        $this->addColumn([
            'index' => 'commission_amount',
            'label' => 'Hoa hồng (VNĐ)',
            'type' => 'string',
            'searchable' => true,
            'sortable' => true,
            'filterable' => true,
            'closure' => function ($row) {
                return core()->formatBasePrice($row->commission_amount ?? 0);
            },
        ]);

        $this->addColumn([
            'index' => 'status',
            'label' => 'Trạng thái',
            'type' => 'string',
            'searchable' => true,
            'sortable' => true,
            'filterable' => true,
            'closure' => function ($row) {
                if ($row->status === 'paid') {
                    return '<span class="label-active">Đã thanh toán</span>';
                }

                if ($row->status === 'pending') {
                    return '<span class="label-pending">Chờ thanh toán</span>';
                }

                return '<span class="label-draft">Đã hủy</span>';
            },
        ]);

        $this->addColumn([
            'index' => 'payment_date',
            'label' => 'Ngày thanh toán',
            'type' => 'date',
            'searchable' => true,
            'sortable' => true,
            'filterable' => true,
        ]);
    }

    /**
     * Prepare actions.
     *
     * @return void
     */
    public function prepareActions()
    {
        if (bouncer()->hasPermission('commissions.view_all')) {
            $this->addAction([
                'title' => 'Đánh dấu đã thanh toán',
                'method' => 'POST',
                'url' => fn($row) => route('admin.commissions.update_status', ['id' => $row->id, 'status' => 'paid']),
                'icon' => 'icon-f-check',
            ]);
        }
    }
}
