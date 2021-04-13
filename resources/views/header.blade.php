<?php
use App\Http\Controllers\ProductController;

$total = 0;
if(Session::has('user'))
{
  $total = ProductController::cartItem();
}
?>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="pull-left" href="/">
      <div class="logo-image">
      <img src="{{ asset('CarAsse.png')}}" alt="no logo">
      </div>
      </a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
      
        <li class=""><a href="/"><i class="glyphicon glyphicon-home" style="font-size:20px"></i></a></li>
        @if(Session::has('user'))
        <li><a href="/myorder">My Order</a></li>
         @else
        <li></li>
        @endif
      </ul>
      <form action="/search" class="navbar-form navbar-left">
      @if(Session::has('user'))
        <div class="form-group">
          <input type="text" name="query" class="form-control search-box" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      @else
      <div class="form-group">
      </div>
      @endif
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/cartlist"><i class="glyphicon glyphicon-shopping-cart" style="font-size:20px"></i>({{$total}})</a></li>
        @if(Session::has('user'))
        <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">{{Session::get('user')['name']}}
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="/LogOut">Log out</a></li>
        </ul>
      </li>
        @else
        <li><a href="/login">Login</a></li>
        <li><a href="/register">Register</a></li>
        @endif
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>