// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:rover_project/widget/KText.dart';

// class homePage extends StatefulWidget {
//   const homePage({super.key});

//   @override
//   State<homePage> createState() => _homePageState();
// }

// class _homePageState extends State<homePage> {
//   bool index = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("Switch"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(
//               width: 100,
//               child: FittedBox(
//                 child: Switch(value:index , onChanged: (value){
//                   setState(() {
//                     index = value;
//                   });
//                 }),
//               ),
//             ),
//             SizedBox(height: 10,),
//             KText(
//               data: "Switch Icon",
//               fontsize: 30,
//             ),
//             SizedBox(height: 90,),

//             CupertinoSwitch(value: index, onChanged: (value){
//               setState(() {
//                     index = value;
//                   });
//             }),
//             SizedBox(height: 10,),

//             KText(
//               data: "Cupertino Switch Icon",
//               fontsize: 30,
//             ),

//           ],
//         ),
//       ),
//     );
//   }
// }





//new Home Page 

import 'package:flutter/material.dart';
import 'package:rover_project/widget/kTextFromField.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
    Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        // iconTheme: IconThemeData.fallback(),
        
         title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text("Welcome to",style: TextStyle(color: Colors.black,fontSize: 27),),
                Text(" "),
                Text("Instagram",style: TextStyle(color: Colors.black,fontSize: 27),)
              ],
              
            ),
            Row(
              children: [
                // Icon(Icons.notifications),
                IconTheme(data: IconThemeData(
                  color: Colors.blue
                ), child: Icon(Icons.notifications),)
                
              ],
            ),
          ],
         ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 80,),
              KTextFromField(
                readonly: true,
                hintText: "Search",
                suffixicon: Icon(Icons.search),
              ),
              SizedBox(height: 20,),
              Container(
                color: Colors.blue,
                child: Text("hello"),
              )

              
            ],
          ),
        ),
      ),
    ));
  }
}