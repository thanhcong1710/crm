<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Webkul\Attribute\Models\Attribute;
use Webkul\Attribute\Models\AttributeOption;
use Webkul\Contact\Models\Person;
use Webkul\Lead\Models\Lead;
use Webkul\Lead\Models\Pipeline;
use Webkul\Lead\Models\Stage;
use Webkul\Product\Models\Product;
use Webkul\User\Models\User;

class BdsPhaseOneSeeder extends Seeder
{
    public function run()
    {
        // 1. Quản lý Rổ hàng & Dự án
        $attrProject = Attribute::firstOrCreate(['code' => 'project_name'], [
            'name'            => 'Dự án',
            'type'            => 'select',
            'entity_type'     => 'products',
            'is_user_defined' => 1,
            'quick_add'       => 1,
        ]);
        $projects = ['Vinhomes Grand Park', 'Aqua City', 'Novaworld', 'Masteri Centre Point'];
        foreach ($projects as $idx => $proj) {
            AttributeOption::firstOrCreate(['attribute_id' => $attrProject->id, 'name' => $proj], ['sort_order' => $idx + 1]);
        }

        Attribute::firstOrCreate(['code' => 'block_name'], [
            'name'            => 'Block/Tòa nhà',
            'type'            => 'text',
            'entity_type'     => 'products',
            'is_user_defined' => 1,
            'quick_add'       => 1,
        ]);

        // 2. Thiết lập tiêu chí Nhu Cầu Khách Hàng (Tạo Lead/Person)
        $leadAttrs = [
            'demand_budget_from' => ['name' => 'Tài chính từ (VNĐ)', 'type' => 'price'],
            'demand_budget_to'   => ['name' => 'Tài chính đến (VNĐ)', 'type' => 'price'],
            'demand_area'        => ['name' => 'Diện tích mong muốn', 'type' => 'text'],
            'demand_location'    => ['name' => 'Khu vực/Dự án quan tâm', 'type' => 'multiselect'],
            'demand_direction'   => ['name' => 'Hướng quan tâm', 'type' => 'select'],
            'demand_type'        => ['name' => 'Loại BĐS', 'type' => 'select'],
        ];

        foreach ($leadAttrs as $code => $data) {
            $attr = Attribute::firstOrCreate(['code' => $code], [
                'name'            => $data['name'],
                'type'            => $data['type'],
                'entity_type'     => 'leads',
                'is_user_defined' => 1,
                'quick_add'       => 1,
            ]);

            if ($code == 'demand_location') {
                $locations = ['Quận 1', 'Quận 2', 'Quận 9', 'Đồng Nai', 'Bình Thuận'];
                foreach ($locations as $idx => $loc) {
                    AttributeOption::firstOrCreate(['attribute_id' => $attr->id, 'name' => $loc], ['sort_order' => $idx + 1]);
                }
            }
            if ($code == 'demand_direction') {
                $directions = ['Đông', 'Tây', 'Nam', 'Bắc', 'Đông Nam', 'Đông Bắc', 'Tây Nam', 'Tây Bắc'];
                foreach ($directions as $idx => $dir) {
                    AttributeOption::firstOrCreate(['attribute_id' => $attr->id, 'name' => $dir], ['sort_order' => $idx + 1]);
                }
            }
            if ($code == 'demand_type') {
                $types = ['Đất nền', 'Căn hộ', 'Nhà phố', 'Biệt thự/Villa', 'Condotel'];
                foreach ($types as $idx => $type) {
                    AttributeOption::firstOrCreate(['attribute_id' => $attr->id, 'name' => $type], ['sort_order' => $idx + 1]);
                }
            }
        }

        // 3. Phân tách mảng Bán và Cho Thuê
        // 3a. Product Attributes
        $attrTransType = Attribute::firstOrCreate(['code' => 'transaction_type'], [
            'name'            => 'Loại giao dịch',
            'type'            => 'select',
            'entity_type'     => 'products',
            'is_user_defined' => 1,
            'quick_add'       => 1,
        ]);
        AttributeOption::firstOrCreate(['attribute_id' => $attrTransType->id, 'name' => 'Bán', 'sort_order' => 1]);
        AttributeOption::firstOrCreate(['attribute_id' => $attrTransType->id, 'name' => 'Cho thuê', 'sort_order' => 2]);
        AttributeOption::firstOrCreate(['attribute_id' => $attrTransType->id, 'name' => 'Cả bán và cho thuê', 'sort_order' => 3]);

        Attribute::firstOrCreate(['code' => 'rent_price'], [
            'name'            => 'Giá thuê (VNĐ)',
            'type'            => 'price',
            'entity_type'     => 'products',
            'is_user_defined' => 1,
            'quick_add'       => 1,
        ]);

        // 3b. Pipelines
        $salePipeline = Pipeline::firstOrCreate(['name' => 'Quy Trình Bán BĐS'], ['is_default' => 0, 'rotten_days' => 30]);
        Stage::firstOrCreate(['code' => 'sale_new', 'lead_pipeline_id' => $salePipeline->id], ['name' => 'Mới / Tương Tác', 'probability' => 10, 'sort_order' => 1]);
        Stage::firstOrCreate(['code' => 'sale_contacted', 'lead_pipeline_id' => $salePipeline->id], ['name' => 'Đã Liên Hệ', 'probability' => 20, 'sort_order' => 2]);
        Stage::firstOrCreate(['code' => 'sale_visit', 'lead_pipeline_id' => $salePipeline->id], ['name' => 'Đi Xem Dự Án', 'probability' => 50, 'sort_order' => 3]);
        Stage::firstOrCreate(['code' => 'sale_negotiation', 'lead_pipeline_id' => $salePipeline->id], ['name' => 'Thương Lượng', 'probability' => 80, 'sort_order' => 4]);
        Stage::firstOrCreate(['code' => 'sale_won', 'lead_pipeline_id' => $salePipeline->id], ['name' => 'Chốt Cọc (Thắng)', 'probability' => 100, 'sort_order' => 5]);
        Stage::firstOrCreate(['code' => 'sale_lost', 'lead_pipeline_id' => $salePipeline->id], ['name' => 'Rớt (Thua)', 'probability' => 0, 'sort_order' => 6]);

        $rentPipeline = Pipeline::firstOrCreate(['name' => 'Quy Trình Cho Thuê BĐS'], ['is_default' => 0, 'rotten_days' => 15]);
        Stage::firstOrCreate(['code' => 'rent_new', 'lead_pipeline_id' => $rentPipeline->id], ['name' => 'Nhu Cầu Mới', 'probability' => 10, 'sort_order' => 1]);
        Stage::firstOrCreate(['code' => 'rent_visit', 'lead_pipeline_id' => $rentPipeline->id], ['name' => 'Khảo Sát Căn', 'probability' => 50, 'sort_order' => 2]);
        Stage::firstOrCreate(['code' => 'rent_won', 'lead_pipeline_id' => $rentPipeline->id], ['name' => 'Chốt Cọc (Thắng)', 'probability' => 100, 'sort_order' => 3]);
        Stage::firstOrCreate(['code' => 'rent_lost', 'lead_pipeline_id' => $rentPipeline->id], ['name' => 'Hủy / Thua', 'probability' => 0, 'sort_order' => 4]);

        // 4. Tạo Sample Data (Rổ Hàng - Products)
        $projectOptions = AttributeOption::where('attribute_id', $attrProject->id)->get()->toArray();
        $transTypeOptions = AttributeOption::where('attribute_id', $attrTransType->id)->get()->toArray();

        for ($i = 1; $i <= 5; $i++) {
            $prod = Product::firstWhere('sku', "BDS-DEMO-00$i");
            if (! $prod) {
                $prod = Product::create([
                    'sku'         => "BDS-DEMO-00$i",
                    'name'        => "Căn hộ Demo $i",
                    'description' => "Test Căn hộ dự án số $i",
                    'quantity'    => 1,
                    'price'       => rand(15, 60) * 100000000, // 1.5 - 6 tỷ
                ]);

                $p = $projectOptions[array_rand($projectOptions)];
                $t = $transTypeOptions[array_rand($transTypeOptions)];

                DB::table('attribute_values')->insert([
                    ['entity_id' => $prod->id, 'entity_type' => 'products', 'attribute_id' => $attrProject->id, 'integer_value' => $p['id'], 'text_value' => null],
                    ['entity_id' => $prod->id, 'entity_type' => 'products', 'attribute_id' => $attrTransType->id, 'integer_value' => $t['id'], 'text_value' => null],
                ]);

                // Thuộc tính Block
                $attrBlock = Attribute::firstWhere('code', 'block_name');
                if ($attrBlock) {
                    DB::table('attribute_values')->insert([
                        ['entity_id' => $prod->id, 'entity_type' => 'products', 'attribute_id' => $attrBlock->id, 'integer_value' => null, 'text_value' => 'Block '.chr(rand(65, 68))],
                    ]);
                }
            }
        }

        // 5. Tạo Sample Data (Khách hàng & Nhu cầu - Person & Lead)
        $user = User::first(); // Lấy 1 User bất kỳ làm owner
        if ($user) {
            for ($i = 1; $i <= 3; $i++) {
                $person = Person::firstWhere('name', "Khách Hàng Demo $i");
                if (! $person) {
                    $person = Person::create([
                        'name'            => "Khách Hàng Demo $i",
                        'emails'          => [['value' => "demo$i@krayin.com", 'label' => 'work']],
                        'contact_numbers' => [['value' => '09'.rand(10000000, 99999999), 'label' => 'work']],
                        'user_id'         => $user->id,
                    ]);
                }

                $lead = Lead::firstOrCreate(['title' => "Nhu cầu Mua/Thuê BĐS - KH Demo $i"], [
                    'description'            => "Test nhu cầu của KH Demo $i",
                    'lead_value'             => rand(20, 50) * 100000000,
                    'status'                 => 1,
                    'user_id'                => $user->id,
                    'person_id'              => $person->id,
                    'lead_pipeline_id'       => $salePipeline->id,
                    'lead_pipeline_stage_id' => Stage::where('lead_pipeline_id', $salePipeline->id)->first()->id ?? null,
                ]);

                // Set initial demand attribute values
                $areaAttr = Attribute::where('code', 'demand_area')->first();
                $budgetFromAttr = Attribute::where('code', 'demand_budget_from')->first();
                $budgetToAttr = Attribute::where('code', 'demand_budget_to')->first();

                if ($areaAttr && ! DB::table('attribute_values')->where('entity_id', $lead->id)->where('entity_type', 'leads')->where('attribute_id', $areaAttr->id)->exists()) {
                    DB::table('attribute_values')->insert([
                        ['entity_id' => $lead->id, 'entity_type' => 'leads', 'attribute_id' => $areaAttr->id, 'integer_value' => null, 'text_value' => '50 - 80m2'],
                    ]);
                }

                if ($budgetFromAttr && ! DB::table('attribute_values')->where('entity_id', $lead->id)->where('entity_type', 'leads')->where('attribute_id', $budgetFromAttr->id)->exists()) {
                    DB::table('attribute_values')->insert([
                        ['entity_id' => $lead->id, 'entity_type' => 'leads', 'attribute_id' => $budgetFromAttr->id, 'integer_value' => null, 'float_value' => 2000000000],
                    ]);
                }

                if ($budgetToAttr && ! DB::table('attribute_values')->where('entity_id', $lead->id)->where('entity_type', 'leads')->where('attribute_id', $budgetToAttr->id)->exists()) {
                    DB::table('attribute_values')->insert([
                        ['entity_id' => $lead->id, 'entity_type' => 'leads', 'attribute_id' => $budgetToAttr->id, 'integer_value' => null, 'float_value' => 4000000000],
                    ]);
                }
            }
        }
    }
}
