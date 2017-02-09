<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('home');
});

Route::group(['prefix'=>'admin'],function (){
	Route::group(['prefix'=>'cate'],function(){
		Route::get('add',['as'=>'admin.cate.getAdd','uses'=>'Categories@getAdd']);
		Route::post('add',['as'=>'admin.cate.postAdd','uses'=>'Categories@postAdd']);
		Route::get('list',['as'=>'admin.cate.getList','uses'=>'Categories@getList']);
		Route::get('delete/{id}',['as'=>'admin.cate.getDelete','uses'=>'Categories@getDelete']);
		Route::get('edit/{id}',['as'=>'admin.cate.getEdit','uses'=>'Categories@getEdit']);
		Route::post('edit/{id}',['as'=>'admin.cate.postEdit','uses'=>'Categories@postEdit']);
	});
	Route::group(['prefix'=>'product'],function(){
		Route::get('add',['as'=>'admin.product.getAdd','uses'=>'Product@getAdd']);
		Route::post('add',['as'=>'admin.product.postAdd','uses'=>'Product@postAdd']);
		Route::get('list',['as'=>'admin.product.getList','uses'=>'Product@getList']);
		Route::get('delete/{id}',['as'=>'admin.product.getDelete','uses'=>'Product@getDelete']);
		Route::get('edit/{id}',['as'=>'admin.product.getEdit','uses'=>'Product@getEdit']);
		Route::post('edit/{id}',['as'=>'admin.product.postEdit','uses'=>'Product@postEdit']);
	});
});
