import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rover_project/widget/KText.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  bool index = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Switch"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              child: FittedBox(
                child: Switch(value:index , onChanged: (value){
                  setState(() {
                    index = value;
                  });
                }),
              ),
            ),
            SizedBox(height: 10,),
            KText(
              data: "Switch Icon",
              fontsize: 30,
            ),
            SizedBox(height: 90,),

            CupertinoSwitch(value: index, onChanged: (value){
              setState(() {
                    index = value;
                  });
            }),
            SizedBox(height: 10,),

            KText(
              data: "Cupertino Switch Icon",
              fontsize: 30,
            ),

          ],
        ),
      ),
    );
  }
}