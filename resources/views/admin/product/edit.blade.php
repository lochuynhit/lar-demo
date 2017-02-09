@extends('admin.admin')
@section('action','Edit')
@section('controller','Product')
@section('admin_content')
<!-- Page Content -->

<!-- /.col-lg-12 -->

<form action="{!! route('admin.product.postEdit',$data['id']) !!}" method="POST" enctype="multipart/form-data">
    <div class="col-lg-7" style="padding-bottom:120px">
        @include('admin.block.error')
            <input type="hidden" name="_token" value="{!! csrf_token() !!}">
            <div class="form-group">
                <label>Category Parent</label>
                <select class="form-control" name="txtParent">
                    <option value="">Please Choose Category</option>
                        <?php cate_parent($parent , 0 , "--" , $data['cate_id'] ) ?>
                </select>
            </div>
        <div class="form-group">
            <label>Name</label>
            <input class="form-control" name="txtName" placeholder="Please Enter Username" 
            value="{!! old('txtName', isset($data) ? $data['name_product'] : NULL) !!}"/>
        </div>
        <div class="form-group">
            <label>Price</label>
            <input class="form-control" name="txtPrice" placeholder="Please Enter Password"
            value="{!! old('txtPrice', isset($data) ? $data['price_product'] : NULL) !!}" />
        </div>
        <div class="form-group">
            <label>Intro</label>
            <textarea class="form-control" rows="3" name="txtIntro">{!! old('txtIntro', isset($data) ? $data['info_product'] : NULL) !!}</textarea>
            <script type="text/javascript">ckeditor('txtIntro')</script>
        </div>
        <div class="form-group">
            <label>Content</label>
            <textarea class="form-control" rows="3" name="txtContent">{!! old('txtContent', isset($data) ? $data['content_product'] : NULL) !!}</textarea>
            <script type="text/javascript">ckeditor('txtContent')</script>
        </div>
        <div class="form-group">
            <label>Images</label>
            <input type="file" name="fImages">
        </div>
        <div class="form-group">
            <label>Product Keywords</label>
            <input class="form-control" name="txtKeywords" placeholder="Please Enter Category Keywords" value="{!! old('txtKeywords', isset($data) ? $data['keywords_product'] : NULL) !!}"/>
        </div>
        <div class="form-group">
            <label>Product Description</label>
            <textarea class="form-control" rows="3" name="txtDescription">{!! old('txtDescription', isset($data) ? $data['description_product'] : NULL) !!}</textarea>
        </div>
        <div class="form-group">
            <label>Product Status</label>
            <label class="radio-inline">
                <input name="rdoStatus" value="1" checked="" type="radio">Visible
            </label>
            <label class="radio-inline">
                <input name="rdoStatus" value="2" type="radio">Invisible
            </label>
        </div>
        <button type="submit" class="btn btn-default">Product Edit</button>
        <button type="reset" class="btn btn-default">Reset</button>
    </div>
    <div class="col-lg-5">
        @for( $i = 1; $i <= 4; $i++ )
            <div class="form-group">
                <label>Images {!! $i !!}</label>
                <input type="file" name="ImagesDetail[]">
            </div>
        @endfor  
    </div><!-- end .col-lg-5 -->
<form>
@stop
