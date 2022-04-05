<?php

namespace App\Http\Controllers;

use App\Models\add_to_cart;
use Illuminate\Http\Request;
use App\Models\products;

class addToCart extends Controller
{
    public function index(Request $request)
    {
        $productData = products::find($request->id)->toArray();
        if (!$productData['regular_price']) {
            $productData['regular_price'] = 0;
        }
        $getData = add_to_cart::where('product_id', $request->id)->where('order_submit', 0)->get()->toArray();
        if (!empty($getData)) {
            return response()->json(['message' => "Product already add to the cart.", "success" => false], 200);
        } else {
            $cart = add_to_cart::Create([
                "product_id" => $request->id,
                "price" => $productData['regular_price'],
                "quantity" => $request->quantity,
                "order_submit" => false
            ]);
            $getAll = add_to_cart::where('order_submit', 0)->with('product')->get();
            $sum = add_to_cart::where('order_submit', 0)->sum('price');
            $count = $getAll->count();
            session()->put('cart', $getAll);
            session()->put('total', $sum);
            session()->put('cartcount', $count);
            if ($cart) {
                return response()->json(['cart' => $count, 'total' => $sum, 'cartdetail' => $getAll, "success" => true, 'message' => "Product added successfully in cart"], 200);
            } else {
                return response()->json(["success" => false, 'message' => "Product not add to cart"], 401);
            }
        }
    }

    public function delete(Request $request)
    {
        $cart = add_to_cart::destroy($request->id);
        $getAll = add_to_cart::where('order_submit', 0)->with('product')->get();
        $sum = add_to_cart::where('order_submit', 0)->sum('price');
        $count = $getAll->count();
        session()->put('cart', $getAll);
        session()->put('cartcount', $count);
        if ($cart) {
            return response()->json(['cart' => $count, 'total' => $sum, 'cartdetail' => $getAll, "success" => true, 'message' => "Product removed successfully in cart"], 200);
        } else {
            return response()->json(["success" => false, 'message' => "Product not deleted in cart"], 401);
        }
    }

    public function getAll()
    {
        $getData = add_to_cart::where('order_submit', 0)->get()->toArray();
        if ($getData) {
            return response()->json(["success" => true, 'data' => $getData, 'message' => ""], 200);
        } else {
            return response()->json(["success" => false, 'message' => "Not fount data in cart"], 401);
        }
    }

    public function submit(Request $request)
    {
        $notificationData = add_to_cart::whereIn('id', $request->ids)->with('product')->get();
        $count = $notificationData->count();
        $notificationtotal = add_to_cart::whereIn('id', $request->ids)->sum('price');
        $updateData = add_to_cart::whereIn('id', $request->ids)->update([
            "order_submit" => true,
        ]);
        if ($updateData) {
            session()->put('cart', '');
            session()->put('cartcount', 0);
            session()->put('notification', $count);
            session()->put('notificationData', $notificationData);
            session()->put('notificationtotal', $notificationtotal);
            return response()->json(["success" => true, 'notificationtotal' => $notificationtotal, 'notificationData' => $notificationData, 'notification' => $count, 'message' => "Order submit successfull."], 200);
        } else {
            return response()->json(["success" => false, 'message' => "order not sumited."], 401);
        }
    }

    public function show()
    {
        $getAll = add_to_cart::where('order_submit', 0)->with('product')->get();
        $sum = add_to_cart::where('order_submit', 0)->sum('price');
        $count = $getAll->count();
        session()->put('cart', $getAll);
        session()->put('total', $sum);
        session()->put('cartcount', $count);
        if ($getAll) {
            return response()->json(['cart' => $count, 'total' => $sum, 'cartdetail' => $getAll, "success" => true, 'message' => "Product added successfully in cart"], 200);
        } else {
            return response()->json(["success" => false, 'message' => "Product not add to cart"], 401);
        }
    }
}
