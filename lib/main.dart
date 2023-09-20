import 'package:flutter/material.dart';
import 'screens/splsh_screen.dart';
main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      // home: SignIn(),
      // home:SignUp(),
    );
  }
}