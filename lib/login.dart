// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),
              _inputfield(context),
              _forgotpassword(context),
              _signup(context),
            ],
          ),
        ),
      ),
    );
  }

  _header(context){
    return Column(
      children: [
        Text(
          "Selamat Datang",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold
          ),
        ),
        Text("Masukan Identitas Untuk Login"),
      ],
    );
  }

  _inputfield(context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "Username",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none
            ),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.person)
          ),
        ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: "Password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none
            ),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.key)
          ),
          obscureText: true,
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: (){}, 
          child: Text(
            "Login",
            style: TextStyle(
              fontSize: 20
            ),
          ),
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(vertical: 16)
          ),
        )
      ],
    );
  }

  _forgotpassword(context){
    return TextButton(
      onPressed: (){}, 
      child: Text(
        "Lupa Password?"
      )
    );
  }

  _signup(context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Belum Mempunyai Akun?"),
        TextButton(
          onPressed: (){}, 
          child: Text(
            "Sign Up"
          )
        )
      ],
    );
  }
}