import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:rover_project/screens/splsh_screen.dart';
import 'package:rover_project/sign%20in%20an%20up/sign_up.dart';

import '../widget/kImage.dart';



class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SImage(),
                SizedBox(height: 20,),
                Text("Wellcome",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.blueAccent[700]),),


                SizedBox(height: 40,),

                KTextFromField(
                 hintText: "Username or Email ",
                 label: Text("Username or Email"),
                ),

                SizedBox(height: 10,),

                KTextFromField(
                  iconData: Icons.lock,
                  hintText: "Password ",
                 label: Text("Password"),
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
                    onPressed: () {
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
    );
  }
}



class KTextFromField extends StatelessWidget {
  const KTextFromField({
    super.key,
    this.isPass=false,
    this.iconData,
    this.label,
    this.hintText
  });
final bool isPass;
final IconData? iconData;
final label;
final hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        
        label: label,
        hintText: hintText,
        prefixIcon: iconData==null? const Icon(Icons.person) :Icon(iconData),
        suffixIcon: isPass !=false? const Icon(Icons.visibility) :null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(width: 50)
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Color.fromARGB(255, 71, 87, 236),width: 2)
        ), 
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Color.fromARGB(255, 71, 87, 236),width: 2)
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Color.fromARGB(255, 71, 87, 236),width: 2)
        )

        ),
    );
  }
}


 
