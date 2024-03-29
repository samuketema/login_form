import "dart:developer";

import "package:flutter/material.dart";
import '../mixins/validation_mixin.dart';

class LoginApp extends StatefulWidget{
  
  createState(){

   return LoginAppState();
  }
}

class LoginAppState extends State<LoginApp> with ValidationMixin{

  var formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25.0),
      child: Form(
        key: formKey,
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
    onSaved:(String? value) {
      if(value != null){
      email = value;
      }
    },
    validator: validateEmail,
    decoration: InputDecoration(
      labelText: 'Email Address',
      hintText: 'youremail@gmail'
    ),
  ) ;
 }

 Widget passwordField(){
  return TextFormField(
    onSaved:(String? value) {
      if(value != null){
      password = value;
      }
    },
    validator: validatePassword ,
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
    onPressed:(){
      if (formKey.currentState != null) {
  if(formKey.currentState!.validate()){
    formKey.currentState!.save();
    print("Time to save $email to email and $password to password in the api");
  }
  
  
  ;
  
}
    },
     child: Text('Submit'));
     
 }
}
