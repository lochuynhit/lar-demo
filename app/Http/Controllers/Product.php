<?php

namespace App\Http\Controllers;

use App\Http\Requests\productsRequest;
use Illuminate\Http\Request;
use App\Category;
use App\Products;
use Illuminate\Support\Facades\Input;
use App\image;
use DB;
class Product extends Controller
{
    public function getAdd(){
    	$parent = Category::select('id','name_cate','parent_id_cate')->orderBy('id','DESC')->get()->toArray();
    	return view('admin.product.add',compact('parent'));
    }
    public function postAdd(productsRequest $request){
        $upload_images = $request->file('fImages')->getClientOriginalName();
    	$product = new Products;
    	$product->name_product	=	$request->txtName;
    	$product->alias_product	=	filterAlias($request->txtName);
    	$product->price_product	=	$request->txtPrice;
    	$product->info_product	=	$request->txtIntro;
    	$product->content_product	=	$request->txtContent;
    	$product->image_product	=	$upload_images;
    	$product->keywords_product	=	$request->txtKeyword;
    	$product->description_product	=	$request->txtDescription;
    	$product->cate_id	=	$request->txtParent;
    	$product->user_id	=	1;
        $request->file('fImages')->move('resources/upload',$upload_images);
        $product->save();
        $pro_id = $product->id;
        if(Input::hasFile('ImagesDetail')){
            foreach (Input::file('ImagesDetail') as $file) {
                $product_img = new image;
                if(isset($file)){
                    $product_img->image = $file->getClientOriginalName();
                    $product_img->product_id = $pro_id;
                    $file->move('resources/upload/detail/',$file->getClientOriginalName());
                    $product_img->save();
                }
            }
        }
        
        return redirect()->route('admin.product.getAdd')->with(['flash_messeger'=>'success ! complete add Product','alert_messeger'=>'success']);
    }
    public function getList(){
        $data = Products::select('id','name_product','price_product','info_product','content_product','image_product','keywords_product','description_product','cate_id','user_id','created_at')->get()->toArray();
    	return view('admin.product.list',compact('data'));
    }

    public function getDelete($id){
        $product_detail = Products::find($id)->images;
        echo "<pre>";
        print_r($product_detail);
        echo "</pre>";
        // $data->delete('id');
        // return redirect()->route('admin.product.getList');
    }
    public function getEdit($id){
        $data = Products::findOrFail($id)->toArray();
        $parent = Category::select('id','name_cate','parent_id_cate')->orderBy('id','DESC')->get()->toArray();
        return view('admin.product.edit',compact('data','parent'));
    }
    public function postEdit($id,productsRequest $request){
        $data = Products::findOrFail($id);
        $upload_images = $request->file('fImages')->getClientOriginalName();
        $data->name_product  =   $request->txtName;
        $data->alias_product =   filterAlias($request->txtName);
        $data->price_product =   $request->txtPrice;
        $data->info_product  =   $request->txtIntro;
        $data->content_product   =   $request->txtContent;
        $data->image_product =   $upload_images;
        $data->keywords_product  =   $request->txtKeywords;
        $data->description_product   =   $request->txtDescription;
        $data->cate_id   =   $request->txtParent;
        $data->user_id   =   1;
        $request->file('fImages')->move('resources/upload',$upload_images);
        $data->save();
        $pro_id = $data->id;

        if(Input::hasFile('ImagesDetail')){
            foreach (Input::file('ImagesDetail') as $file) {
                $product_img = image::where('product_id','=',$pro_id)->get()->toArray();
                $img = (object)$product_img;
                echo "<pre>";
                print_r($img);
                echo "</pre>";

                if(isset($file)){
                    $product_img[]->image = $file->getClientOriginalName();
                    $file->move('resources/upload/detail/',$file->getClientOriginalName());
                    $product_img->save();
                }
            }
        }
        
        //return redirect()->route('admin.product.getList');
    }
}