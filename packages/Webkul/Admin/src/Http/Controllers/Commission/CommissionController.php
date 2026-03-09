<?php

namespace Webkul\Admin\Http\Controllers\Commission;

use App\Models\CommissionSplit;
use Webkul\Admin\DataGrids\Commission\CommissionDataGrid;
use Webkul\Admin\Http\Controllers\Controller;

class CommissionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\View\View|\Illuminate\Http\JsonResponse
     */
    public function index()
    {
        if (request()->ajax()) {
            return app(CommissionDataGrid::class)->toJson();
        }

        $query = CommissionSplit::query();

        if (! bouncer()->hasPermission('commissions.view_all')) {
            $query->where('user_id', auth()->user()->id);
        }

        $statistics = [
            'total_pending' => (clone $query)->where('status', 'pending')->sum('commission_amount'),
            'total_paid'    => (clone $query)->where('status', 'paid')->sum('commission_amount'),
            'total_count'   => (clone $query)->count(),
        ];

        return view('admin::commissions.index', compact('statistics'));
    }

    /**
     * Update the commission status.
     *
     * @param  int  $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function updateStatus($id)
    {
        $commission = CommissionSplit::findOrFail($id);

        $newStatus = request()->input('status');

        if (! in_array($newStatus, ['pending', 'paid', 'cancelled'])) {
            return response()->json(['message' => 'Trạng thái không hợp lệ'], 400);
        }

        $commission->update([
            'status'       => $newStatus,
            'payment_date' => $newStatus === 'paid' ? now() : $commission->payment_date,
        ]);

        return response()->json([
            'message' => 'Cập nhật trạng thái hoa hồng thành công',
        ]);
    }
}
