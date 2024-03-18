import "dart:developer";

import "package:flutter/material.dart";

class LoginApp extends StatefulWidget{
  
  createState(){

   return LoginAppState();
  }
}

class LoginAppState extends State<LoginApp>{

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25.0),
      child: Form(
        child:Column(
          children: [
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.only(bottom: 25.0)),
            submitButton()
          ],
        ) ,),

    );
  }
 Widget emailField() {
  return TextFormField(
    decoration: InputDecoration(
      labelText: 'Email Address',
      hintText: 'youremail@gmail'
    ),
  ) ;
 }

 Widget passwordField(){
  return TextFormField(
    keyboardType:TextInputType.emailAddress ,
    decoration: InputDecoration(
      hintText:'password',
      labelText: 'Password'
    ),
  );
 }
 Widget submitButton(){
  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 22, 3, 147)),
      foregroundColor: MaterialStateProperty.all(Colors.white),
    ),
    onPressed:(){},
     child: Text('Submit'));
     
 }
}
