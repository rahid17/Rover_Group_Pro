import 'dart:async';

import 'package:flutter/material.dart';
import '../Auth/sign_in.dart';
import '../widget/kImage.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  // openPage(context){
  //   Timer(Duration(seconds: 2), () {
  //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignIn(),));
  //    });
  // }

  openPage(Context){
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignIn(),));
    }
    
    );
  }

  @override
  void initState() {
    openPage(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width =MediaQuery.of(context).size.width;
    double height =MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SImage(),
                  SizedBox(height: 20,),
                Text("Bangladesh Scouts",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                SizedBox(height: 30,),
                SizedBox(
                  child: CircularProgressIndicator(
                    color: Colors.red,
                  ),
                )
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