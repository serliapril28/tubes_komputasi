<?php

namespace App\Http\Controllers;

use App\Models\product;
use Illuminate\Http\Request;

class ProductAdminController extends Controller
{
    public function index()
    {
        $data = product::paginate(10);
        return view('admin.page.product', ['title' => "Product", 'name' => 'Product', 'data' => $data]);
    }
}
