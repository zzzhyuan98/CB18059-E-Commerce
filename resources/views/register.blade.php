@extends('master')
@section("content")
<form class="form-horizontal" action='/register' method="POST">
@csrf
<div class="col-sm-4 col-sm-offset-4">
  <fieldset>
    <div id="legend">
      <legend class="">New Account Registration</legend>
    </div>
    <div class="form-group">
      <!-- Username -->
      <label class="control-label"  for="username">Username</label>
      <div class="controls">
        <input type="text" id="username" name="username" placeholder="" class="form-control">
      </div>
    </div>
 
    <div class="form-group">
      <!-- E-mail -->
      <label class="control-label" for="email">E-mail</label>
      <div class="controls">
        <input type="text" id="email" name="email" placeholder="" class="form-control">
      </div>
    </div>
 
    <div class="form-group">
      <!-- Password-->
      <label class="control-label" for="password">Password</label>
      <div class="controls">
        <input type="password" id="password" name="password" placeholder="" class="form-control">
      </div>
    </div>
 
    <div class="control-group">
      <!-- Button -->
      <div class="form-group">
        <button type="submit" class="btn btn-success btn-center">Register</button>
      </div>
    </div>
  </fieldset>
  </div>
</form>
@endsection