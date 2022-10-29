
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,

                  ),
                  //textAlign: TextAlign.start,
                ),
              ),
              SizedBox(height: 15,),
              TextFormField(
                onFieldSubmitted: (value){
                  print(value);
                },
                onChanged: (value){
                  print(value);
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                  labelText: 'Email',
                ),
              ),
              SizedBox(height: 15,),
              TextFormField(
                onFieldSubmitted: (value){
                  print(value);
                },
                onChanged: (value){
                  print(value);
                },
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.remove_red_eye,
                  ),
                  labelText: 'Password',
                ),
              ),
            ],
          ),
        ),
      ) ,
    );
  }
}
