import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:penugasan_flutter_form_input/home.dart';

class Register extends StatelessWidget{

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: "Username",
              ),
            ),
            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
              ),
            ),
            RaisedButton(
              child: Text("Register", style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                  return Home(usernameController.text.toString(), passwordController.text.toString());
                }));
              },
            ),
          ],
        ),
      ),
    );
  }

}