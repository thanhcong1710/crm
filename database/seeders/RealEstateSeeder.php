<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Webkul\Attribute\Models\Attribute;
use Webkul\Attribute\Models\AttributeOption;
use Webkul\Contact\Models\Person;
use Webkul\Lead\Models\Lead;
use Webkul\Lead\Models\Pipeline;
use Webkul\Lead\Models\Stage;
use Webkul\Product\Models\Product;
use Webkul\User\Models\Group;
use Webkul\User\Models\Role;
use Webkul\User\Models\User;

class RealEstateSeeder extends Seeder
{
    public function run()
    {
        // 1. Create Groups
        $groups = [
            'Phòng Kinh Doanh 1',
            'Phòng Kinh Doanh 2',
            'Bộ Phận Hành Chính',
            'Ban Giám Đốc',
        ];
        $groupIds = [];
        foreach ($groups as $name) {
            $group = Group::firstOrCreate(['name' => $name]);
            $groupIds[$name] = $group->id;
        }

        // 2. Create Roles
        $nvkdPermissions = [
            'leads',
            'leads.create',
            'leads.edit',
            'leads.view',
            'contacts',
            'contacts.persons',
            'contacts.persons.create',
            'contacts.persons.edit',
            'contacts.persons.view',
            'products',
            'products.create',
            'products.edit',
            'products.view',
        ];
        $tpkdPermissions = array_merge($nvkdPermissions, [
            'leads.delete',
            'quotes',
            'quotes.create',
            'quotes.edit',
            'quotes.delete',
            'quotes.view',
            'contacts.organizations',
            'contacts.organizations.create',
            'contacts.organizations.edit',
        ]);

        $roleNVKD = Role::firstOrCreate(['name' => 'Nhân Viên Kinh Doanh'], [
            'description'     => 'Quyền NVKD (Chỉ cá nhân)',
            'permission_type' => 'custom',
            'permissions'     => $nvkdPermissions,
        ]);

        $roleTPKD = Role::firstOrCreate(['name' => 'Trưởng Phòng Kinh Doanh'], [
            'description'     => 'Quyền TPKD (Đội nhóm)',
            'permission_type' => 'custom',
            'permissions'     => $tpkdPermissions,
        ]);

        // 3. Create Users
        $manager = User::firstOrCreate(['email' => 'manager@krayin.com'], [
            'name'            => 'Trưởng Phòng KD1',
            'password'        => Hash::make('12345678'),
            'role_id'         => $roleTPKD->id,
            'view_permission' => 'group',
            'status'          => 1,
        ]);

        DB::table('user_groups')->updateOrInsert(['user_id' => $manager->id, 'group_id' => $groupIds['Phòng Kinh Doanh 1']]);

        $sale1 = User::firstOrCreate(['email' => 'sale1@krayin.com'], [
            'name'            => 'Nhân Viên KD1 A',
            'password'        => Hash::make('12345678'),
            'role_id'         => $roleNVKD->id,
            'view_permission' => 'individual',
            'status'          => 1,
        ]);
        DB::table('user_groups')->updateOrInsert(['user_id' => $sale1->id, 'group_id' => $groupIds['Phòng Kinh Doanh 1']]);

        $sale2 = User::firstOrCreate(['email' => 'sale2@krayin.com'], [
            'name'            => 'Nhân Viên KD1 B',
            'password'        => Hash::make('12345678'),
            'role_id'         => $roleNVKD->id,
            'view_permission' => 'individual',
            'status'          => 1,
        ]);
        DB::table('user_groups')->updateOrInsert(['user_id' => $sale2->id, 'group_id' => $groupIds['Phòng Kinh Doanh 1']]);

        // 4. Create Attributes for Product
        $attrArea = Attribute::firstOrCreate(['code' => 'dien_tich_m2'], [
            'name'            => 'Diện tích (m2)',
            'type'            => 'text',
            'validation'      => 'numeric',
            'entity_type'     => 'products',
            'is_user_defined' => 1,
            'quick_add'       => 1,
        ]);

        $attrLocation = Attribute::firstOrCreate(['code' => 'vi_tri_quan'], [
            'name'            => 'Vị trí/Quận huyện',
            'type'            => 'select',
            'entity_type'     => 'products',
            'is_user_defined' => 1,
            'quick_add'       => 1,
        ]);
        $locations = ['Quận 1', 'Quận 2', 'Quận 3', 'Quận 7', 'Quận 9', 'Bình Thạnh', 'Thủ Đức'];
        foreach ($locations as $idx => $loc) {
            AttributeOption::firstOrCreate(['attribute_id' => $attrLocation->id, 'name' => $loc], ['sort_order' => $idx + 1]);
        }

        $attrDirection = Attribute::firstOrCreate(['code' => 'huong_nha'], [
            'name'            => 'Hướng nhà',
            'type'            => 'select',
            'entity_type'     => 'products',
            'is_user_defined' => 1,
            'quick_add'       => 1,
        ]);
        $directions = ['Đông', 'Tây', 'Nam', 'Bắc', 'Đông Nam', 'Đông Bắc', 'Tây Nam', 'Tây Bắc'];
        foreach ($directions as $idx => $dir) {
            AttributeOption::firstOrCreate(['attribute_id' => $attrDirection->id, 'name' => $dir], ['sort_order' => $idx + 1]);
        }

        $attrType = Attribute::firstOrCreate(['code' => 'loai_bds'], [
            'name'            => 'Loại BĐS',
            'type'            => 'select',
            'entity_type'     => 'products',
            'is_user_defined' => 1,
            'quick_add'       => 1,
        ]);
        $types = ['Đất nền', 'Căn hộ', 'Nhà phố', 'Biệt thự/Villa', 'Condotel'];
        foreach ($types as $idx => $type) {
            AttributeOption::firstOrCreate(['attribute_id' => $attrType->id, 'name' => $type], ['sort_order' => $idx + 1]);
        }

        // 5. Create Product data
        $productTypes = AttributeOption::where('attribute_id', $attrType->id)->get()->toArray();
        $productLocations = AttributeOption::where('attribute_id', $attrLocation->id)->get()->toArray();
        for ($i = 1; $i <= 8; $i++) {
            $prod = Product::firstWhere('sku', "BDS-00$i");
            if (! $prod) {
                $prod = Product::create([
                    'sku'         => "BDS-00$i",
                    'name'        => "Sản Phẩm BĐS $i",
                    'description' => "Căn hộ/Đất nền vị trí đẹp số $i",
                    'quantity'    => 1,
                    'price'       => rand(1500, 5000) * 1000000,
                ]);

                $t = $productTypes[array_rand($productTypes)];
                $l = $productLocations[array_rand($productLocations)];
                DB::table('attribute_values')->insert([
                    ['entity_id' => $prod->id, 'entity_type' => 'products', 'attribute_id' => $attrArea->id, 'integer_value' => null, 'text_value' => rand(50, 200)],
                    ['entity_id' => $prod->id, 'entity_type' => 'products', 'attribute_id' => $attrType->id, 'integer_value' => $t['id'], 'text_value' => null],
                    ['entity_id' => $prod->id, 'entity_type' => 'products', 'attribute_id' => $attrLocation->id, 'integer_value' => $l['id'], 'text_value' => null],
                ]);
            }
        }

        // 6. Lead Sources & Types
        $sources = ['Quảng cáo Facebook', 'Zalo', 'Batdongsan.com.vn', 'Môi giới giới thiệu', 'Khách tự gọi đến'];
        foreach ($sources as $s) {
            DB::table('lead_sources')->updateOrInsert(['name' => $s]);
        }
        $leadSources = DB::table('lead_sources')->pluck('id')->toArray();

        $leadTypes = ['Khách Mua Đầu Tư', 'Khách Mua Để Ở', 'Khách Thuê'];
        foreach ($leadTypes as $t) {
            DB::table('lead_types')->updateOrInsert(['name' => $t]);
        }
        $leadTypesArr = DB::table('lead_types')->pluck('id')->toArray();

        // 7. Pipeline & Stages
        $pipeline = Pipeline::firstWhere('name', 'Default Pipeline');
        if ($pipeline) {
            $pipeline->update(['name' => 'Quy Trình Đầu Tư BĐS']);
        } else {
            $pipeline = Pipeline::create(['name' => 'Quy Trình Đầu Tư BĐS', 'is_default' => 1, 'rotten_days' => 30]);
        }

        Stage::where('lead_pipeline_id', $pipeline->id)->delete();
        $stages = [
            ['code' => 'new', 'name' => 'Mới Tiếp Nhận', 'probability' => 10, 'sort_order' => 1, 'lead_pipeline_id' => $pipeline->id],
            ['code' => 'contacted', 'name' => 'Đã Liên Hệ / Nhu Cầu', 'probability' => 30, 'sort_order' => 2, 'lead_pipeline_id' => $pipeline->id],
            ['code' => 'site_visit', 'name' => 'Tư Vấn & Đi Xem', 'probability' => 50, 'sort_order' => 3, 'lead_pipeline_id' => $pipeline->id],
            ['code' => 'negotiation', 'name' => 'Thương Lượng / Báo Giá', 'probability' => 80, 'sort_order' => 4, 'lead_pipeline_id' => $pipeline->id],
            ['code' => 'won', 'name' => 'Chốt Cọc (Thắng)', 'probability' => 100, 'sort_order' => 5, 'lead_pipeline_id' => $pipeline->id],
            ['code' => 'lost', 'name' => 'Trượt (Thua)', 'probability' => 0, 'sort_order' => 6, 'lead_pipeline_id' => $pipeline->id],
        ];
        foreach ($stages as $stage) {
            Stage::create($stage);
        }
        $stageIds = Stage::where('lead_pipeline_id', $pipeline->id)->pluck('id')->toArray();

        // 8. Persons & Leads
        for ($i = 1; $i <= 10; $i++) {
            $person = Person::firstWhere('name', "Khách BĐS Phạm Văn $i");
            if (! $person) {
                $person = Person::create([
                    'name'            => "Khách BĐS Phạm Văn $i",
                    'emails'          => [['value' => "khach$i@test.com", 'label' => 'work']],
                    'contact_numbers' => [['value' => '09'.rand(10000000, 99999999), 'label' => 'work']],
                    'user_id'         => ($i % 2 == 0) ? $sale1->id : $sale2->id,
                ]);
            }

            Lead::firstOrCreate(['title' => "Quan tâm Dự Án X - KH $i"], [
                'description'            => 'Khách hàng quan tâm dự án qua quảng cáo / referral.',
                'lead_value'             => rand(10, 50) * 100000000,
                'status'                 => 1,
                'expected_close_date'    => now()->addDays(rand(5, 30)),
                'user_id'                => ($i % 2 == 0) ? $sale1->id : $sale2->id,
                'person_id'              => $person->id,
                'lead_source_id'         => $leadSources[array_rand($leadSources)],
                'lead_type_id'           => $leadTypesArr[array_rand($leadTypesArr)],
                'lead_pipeline_id'       => $pipeline->id,
                'lead_pipeline_stage_id' => $stageIds[array_rand($stageIds)],
            ]);
        }
    }
}
