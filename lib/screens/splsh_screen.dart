import 'dart:async';

import 'package:flutter/material.dart';
import '../sign in an up/sign_in.dart';
import '../widget/kImage.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  openPage(context){
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignIn(),));
     });
  }
  @override
  void initState() {
    openPage(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SImage(),
                  SizedBox(height: 20,),
                Text("Bangladesh Scouts",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
        ),
      ));
  }
}

// class SImage extends StatelessWidget {
//   const SImage({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 150,
//       width: 150,
//       child: Image.asset("assets/bn_scout_logo.png"));
//   }
// }