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
}