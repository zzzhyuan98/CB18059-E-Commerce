@extends('master')
@section("content")
<div class="container">
    <div class="row">
         <div class="col-sm-6">
            <img class="detail-img" src="{{$product['picture']}}" alt="">
         </div>
            <div class="col-sm-6">
                <a href="/">Back to Home page</a>
                <h2>{{$product['name']}}</h2>
                <h3>Price: RM{{$product['price']}}</h3>
                <h4>category: {{$product['category']}}</h4>
                <h5>Description: {{$product['description']}}</h5>
                <br><br>
                <form action="/AddToCart" method="POST">
                    @csrf
                    <input type="hidden" name="product_id" value="{{$product['id']}}">                
                <button class="btn btn-primary">Add to cart</button>
                
                </form>
                <form action="/BuyNow" method="GET">
                <input type="hidden" name="product_id" value="{{$product['id']}}"> 
                <button class="btn btn-success">Buy Now</button>
                </form>
            </div>
    </div>
</div>
@endsection                                                                                                                                                     