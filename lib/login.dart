

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
final _formKey = GlobalKey<FormState>();
final emailController = TextEditingController();
final passwordController = TextEditingController();
String message='';
@override
void dispose(){;
  emailController.dispose();
  passwordController.dispose();
}
class Loginpage extends StatelessWidget {
  Widget createEmailInput(){
    return Padding(
      padding: const EdgeInsets.only(top:40),
      child: TextFormField(
        decoration:
        InputDecoration(hintText: 'Usuario o Correo Electronico'),
      ),
    );
  }
  Widget createPasswordInput(){
    return Padding(
      padding: const EdgeInsets.only(top:32),
      child: TextFormField(
        decoration:
        InputDecoration(hintText: 'Contraseña'),
        obscureText: true,
      ),
    );
  }
  Widget createLoginButton(){
    return Container(
      padding: const EdgeInsets.only(top: 32),
      child: RaisedButton(
          child:Text('Entrar'),
      onPressed: () {
            if(_formKey.currentState.validate())
             {
             var email = emailController.text;
             var password = passwordController.text;

             }
      },
      ),
    );
  }
  Widget renderCreateAccountLink(){
    return Container(
      padding: EdgeInsets.only(top:24),
      child: Text(
        'O create tu cuenta aqui!',
            textAlign: TextAlign.right,
        style: TextStyle(fontWeight: FontWeight.bold),
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(color: Colors.white),
        child: ListView(children: [
          Image.asset('assets/images/logo.png', height: 250),
          createEmailInput(),
          createPasswordInput(),
          createLoginButton(),
          renderCreateAccountLink(),
        ]),
      ),
    );
  }
}

