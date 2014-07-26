    

<?php

class UserController extends \BaseController {

/**
* Display a listing of the resource.
*
* @return Response
*/
public function index()
{
//
}



/**
* Show the form for creating a new resource.
*
* @return Response
*/
public function login()
{
return View::make('login');

}

public function otorisasi()
{
    $username=Input::get('username');
    $password=Input::get('password');
    $passhash=Crypt::encrypt($password);

if (Auth::attempt(array('username' => $username, 'password' => $password)))
{
    return Redirect::to('http://facebook.com');
}
else{
   return Redirect::to('login')->with('pesan', 'Login gagal, email atau password salah!');
}
}

public function register()
{
return View::make('register');

//
}


/**
* Store a newly created resource in storage.
*
* @return Response
*/
public function store()
{

$book = new user; //memanggil model class user

    $book->username = Input::get('username');
    $book->password = Hash::make(Input::get('password'));
  
    $book->save();
    return Redirect::to('register')->with('pesan', 'Registrasi berhasil!');
   

//

}


/**
* Display the specified resource.
*
* @param int $id
* @return Response
*/
public function show($id)
{
//
}


/**
* Show the form for editing the specified resource.
*
* @param int $id
* @return Response
*/
public function edit($id)
{
//
}


/**
* Update the specified resource in storage.
*
* @param int $id
* @return Response
*/
public function update($id)
{
//
}


/**
* Remove the specified resource from storage.
*
* @param int $id
* @return Response
*/
public function destroy($id)
{
//
}


}

