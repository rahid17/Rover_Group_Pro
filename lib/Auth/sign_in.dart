
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:rover_project/screens/splsh_screen.dart';
import 'package:rover_project/Auth/sign_up.dart';

import '../widget/kImage.dart';
import '../widget/kText.dart';
import '../widget/kTextFromField.dart';



class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey =GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   title: Text("Rahid" ,style: TextStyle(color: Colors.black),),
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      // ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SImage(),
                  SizedBox(height: 20,),
                  KText(
                    data: "Welcome",
                    fontsize: 35,
                    color: Colors.red,
                  ),
                  SizedBox(height: 10,),
                  KText(
                    data: "Log in to your account",
                    color: Colors.green,
                  ),
            
            
                  SizedBox(height: 40,),
            
                  KTextFromField(
                   hintText: "Username or Email ",
                   label: Text("Username or Email"),
                   validator: (value){
                    if ( value==null|| value.isEmpty){
                      return "Enter username or email";
                    }
                    return null;
                   },
                  ),
            
                  SizedBox(height: 10,),
            
                  KTextFromField(
                    iconData: Icons.lock,
                    hintText: "Password ",
                   label: Text("Password"),
                   isPass: true,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(onPressed: (){}, child: Text("Forgot password?",style: TextStyle(fontSize: 16),))
                    ],
                  ),
                  SizedBox(
                    height: 40,
                    width: 150,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                      onPressed: () {
                        // if(_formKey.currentState!.validate())

                        print("Sign in");
                      
                    }, child: Text("Sign In")
                    
                    ),
                  ),
                  SizedBox(height: 20,), 
            
                  Text.rich(TextSpan(children: [
                    TextSpan(text: "Don't have an account?",style: TextStyle(fontSize: 17)),
                    TextSpan(text: "  ",style: TextStyle(fontSize: 17)),
                    TextSpan(text: "Sign Up",style: TextStyle(fontSize: 17, color: Colors.blueAccent[700]),
                    recognizer: TapGestureRecognizer()..onTap= () {
                      print("tapped");
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUp(),));
                    } )
                  ]
                  ))
            
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}









 
