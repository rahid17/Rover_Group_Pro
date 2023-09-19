import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../widget/kImage.dart';
import 'sign_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SImage(),
    
                  SizedBox(height: 40,),
    
                  KTextFromField(
                   hintText: "Name ",
                   label: Text("Name"),
                  ),
    
                  SizedBox(height: 10,),
    
                  KTextFromField(
                    iconData: Icons.person_2_outlined,
                    hintText: "Username ",
                   label: Text("Username"),
                  ),
    
                  SizedBox(height: 10,),
    
                  KTextFromField(
                    iconData: Icons.mail,
                    hintText: "Email Address ",
                   label: Text("Email Address"),
                  ),
                  SizedBox(height: 10,),
    
                  KTextFromField(
                    iconData: Icons.key,
                    hintText: "Group ID ",
                   label: Text("Group ID"),
                  ),
                  SizedBox(height: 10,),
    
                  KTextFromField(
                    iconData: Icons.key,
                    hintText: "Group name ",
                   label: Text("Group name"),
                  ),
                  SizedBox(height: 10,),
    
                  KTextFromField(
                    iconData: Icons.numbers_outlined,
                    hintText: "Phone Number  ",
                   label: Text("Phone Number"),
                  ),
                  SizedBox(height: 10,),
    
                  KTextFromField(
                    iconData: Icons.lock,
                    hintText: "Password ",
                   label: Text("Password"),
                  ),
                  SizedBox(height: 10,),
    
                  KTextFromField(
                    iconData: Icons.lock,
                    hintText: "Confirm Password ",
                   label: Text("Confirm Password"),
                  ),
                  SizedBox(height: 10,),
    
    
                  SizedBox(
                    height: 40,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {
                        print("Sign up");
                      
                    }, child: Text("Sign up")
                    
                    ),
                  ),
                  SizedBox(height: 20,), 
    
                  Text.rich(TextSpan(children: [
                    TextSpan(text: "Already have an account?",style: TextStyle(fontSize: 17)),
                    TextSpan(text: "  ",style: TextStyle(fontSize: 17)),
                    TextSpan(text: "Sign in",style: TextStyle(fontSize: 17, color: Colors.blueAccent[700]),
                    recognizer: TapGestureRecognizer()..onTap= (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignIn(),));
                    }
                    // recognizer: TapGestureRecognizer()..onTap= () => print("tapped")
                    )
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