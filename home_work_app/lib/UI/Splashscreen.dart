import 'dart:async';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'selected_type.dart';




class Splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 15), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
       builder: (context) => selecttype(),
      ));
    });
  }

  // added test yourself
  // and made the text to align at center
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage("images/2.jpg"),
                  fit: BoxFit.cover
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Container(
                      width: 300,
                      height: 180,
                      decoration: new BoxDecoration(
                          image: new DecorationImage(
                            image: new AssetImage("assets/workk.gif"),
                            fit: BoxFit.fill,
                          )
                      )

                  ),
                ),
                SizedBox(
                  height: 50.0,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  child: ColorizeAnimatedTextKit(
                    onTap: () {
                      print("Tap Event");
                    },
                    text: [
                      "Quratulain \n(FA17-BCS-075)",
                      "Saqib Javed \n(FA17-BCS-096)",
                      "Tayyaba Ishfaq\n(FA17-BCS-115)",
                      "Nabeel Qamar \n(FA17-BCS-060)",
                      "Rehman Ali\n(FA17-BCS-076)",
                      "M. Danish\n(FA17-BCS-058)",
                      "Saad Shafiq\n(FA17-BCS-129)",
                      "Hamid Rehman\n(FA17-BCS-121)",
                    ],


                    textStyle: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,

                    ),
                    colors: [
                      Colors.white,
                      Colors.blueGrey,
                      Colors.yellow,
                      Colors.greenAccent,
                    ],
                    textAlign: TextAlign.center,

                  ),

                ),

                SizedBox(
                  height: 50.0,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),


                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 75,
                  backgroundImage:
                  AssetImage('assets/load.gif'),
                ),


              ],
            ),
          )),
    );
  }

}
