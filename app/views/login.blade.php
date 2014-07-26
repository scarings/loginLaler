@extends('layout') 
@section('content') 
  <div class="container">
    <div class="row">
      <div class=col-lg-12><br></<div>
    </div>
    <div class="row">
      <div class=col-lg-12><p></p></<div>
    </div>
    <div class="row">
      <div class=col-lg-12><br></<div>
    </div>
  <div class="row">
    <div class=col-lg-4></div> 
<div class=col-lg-4>
  <div class="panel panel-default">
  <div class="panel-body">
    <h2>Login</h2> 
     @if(Session::has('pesan'))
  <div class="alert alert-success">{{ Session::get('pesan') }}</div>
  @endif
  
  {{Form::open(array('action' => 'UserController@otorisasi')) }} 
  {{Form::label('username', 'User Name') }} 
  {{Form::text('username', '', array('class' => 'form-control'))}} 
  {{Form::label('password', 'Password') }} 
  {{Form::password('password', array('class' => 'form-control'))}} 
  <br>    
  {{Form::submit('Login', array('class' => 'btn btn-primary')) }} 
  {{ Form::close() }} 
  </div></div></div></div> </div>
 @stop