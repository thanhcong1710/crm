<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CommissionSplit extends Model
{
    use HasFactory;

    protected $fillable = [
        'lead_id',
        'user_id',
        'role',
        'commission_percentage',
        'commission_amount',
        'payment_date',
        'status',
        'notes',
    ];

    public function lead()
    {
        return $this->belongsTo(\Webkul\Lead\Models\Lead::class);
    }

    public function user()
    {
        return $this->belongsTo(\Webkul\User\Models\User::class);
    }
}
