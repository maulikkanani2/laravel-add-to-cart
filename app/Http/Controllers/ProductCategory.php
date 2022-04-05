<?php

namespace App\Http\Controllers;
use App\Models\products;

class ProductCategory extends Controller
{
    public function index(){
        $productList = products::paginate(10);
        return view('ProductCategory')->with('product',$productList);
    }

    public function showProduct($id){
        $productList = products::find($id);
        return view('addtoCart')->with('product',$productList);
    }
}
