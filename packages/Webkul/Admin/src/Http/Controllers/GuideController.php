<?php

namespace Webkul\Admin\Http\Controllers;

use Illuminate\Contracts\View\View;

class GuideController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\View\View
     */
    public function index(): View
    {
        return view('admin::guide.index');
    }
}
