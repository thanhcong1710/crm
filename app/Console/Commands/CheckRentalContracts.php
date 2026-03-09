<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

class CheckRentalContracts extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'leads:check-rentals';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Check rental contracts expiring in 30 days and create reminder activities.';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $targetDate = now()->addDays(30)->format('Y-m-d');

        // Find leads with 'contract_end_date' attribute equal to $targetDate
        $leads = \Webkul\Lead\Models\Lead::whereHas('attribute_values', function ($query) use ($targetDate) {
            $query->whereHas('attribute', function ($q) {
                $q->where('code', 'contract_end_date');
            })->where('date_value', 'like', $targetDate . '%'); // date_value could be datetime
        })->get();

        foreach ($leads as $lead) {
            \Webkul\Activity\Models\Activity::create([
                'title' => 'Gia hạn Hợp đồng Lead: ' . $lead->title,
                'type' => 'call', // default activity type
                'comment' => 'Hợp đồng thuê của khách hàng sẽ hết hạn sau 30 ngày (vào ' . $targetDate . '). Hãy gọi điện hỏi khách có gia hạn hay không.',
                'schedule_from' => now(),
                'schedule_to' => now()->addMinutes(30),
                'is_done' => 0,
                'user_id' => $lead->user_id, // Assigned Sale Person
            ]);

            // Link to the lead
            $activity = \Webkul\Activity\Models\Activity::latest('id')->first();
            if ($activity) {
                \DB::table('lead_activities')->insert([
                    'lead_id' => $lead->id,
                    'activity_id' => $activity->id,
                ]);
            }

            $this->info("Created reminder for Lead ID {$lead->id}");
        }

        $this->info("Finished checking rental contracts.");
    }
}
