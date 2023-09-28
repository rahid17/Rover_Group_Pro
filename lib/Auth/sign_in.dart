
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:rover_project/Auth/keyData.dart';
// import 'package:rover_project/screens/splsh_screen.dart';
import 'package:rover_project/Auth/sign_up.dart';
import 'package:rover_project/screens/navBar.dart';
import 'package:rover_project/widget/main_sImages.dart';

import '../widget/kImage.dart';
import '../widget/kText.dart';
import '../widget/kTextFromField.dart';



class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  // final _formKey =GlobalKey();
  // GlobalKey<FormState> formKey = new GlobalKey();
  // static GlobalKey<FormState> formKey = GlobalKey<FormState>();
    void validate() {
    // FormState form = formKey.currentState;

    if (AuthData.formKey.currentState!.validate()) {
      print('Form is valid');
    } else {
      print('Form is invalid');
    }
  }
  
  bool obSecure = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                key: AuthData.formKey,
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
                    prefixIcon: Icon(Icons.person),
                     hintText: "Username or Email ",
                     label: Text("Username or Email"),
                     controller: AuthData.email,
                     validator: (value){
                      print(value);
                      var emailValid = 
                      RegExp(r"^[a-zA-Z0-9.A-a-zZ0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                      if ( value==null|| value.isEmpty){
                        return "Enter email address";
                      }else if(!emailValid.hasMatch(value)){
                        return "Invalid email";
                      }
                      
                        return null;
                     },
                    ),
              
                    SizedBox(height: 10,),
              
                    KTextFromField(
                      controller: AuthData.pass,
                       validator: (value){
                      print(value);
                      
                      if ( value==null|| value.isEmpty){
                        return "Enter password";
                      }else {
                        return null;
                      }
                      
                        
                     },
                      prefixIcon: Icon(Icons.lock),
                      hintText: "Password ",
                      label: Text("Password"),
                      isPass: true,
                      obsecureText: obSecure,
                      suffixicon: GestureDetector(onTap: () {
                      obSecure=!obSecure;
                      setState(() {
                        
                      });
                      
                      
                       
                     },child: obSecure== false? Icon(Icons.visibility):Icon(Icons.visibility_off),),
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
                          if(AuthData.formKey.currentState!.validate()){
                            if(AuthData.email.text == "ahmedrahid90@gmail.com"&& AuthData.pass.text == "123456"){
                              print("ok");
                              // return "Welcome ";
                            }else{
                              print("no");
                            }
                          }
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
                        // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUp(),));
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NavBar(),));
                      } )
                    ]
                    ))
              
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}









 
