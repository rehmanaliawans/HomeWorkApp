import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_work_app/UI/contactus.dart';
import 'package:home_work_app/theme/constants.dart';
import 'package:home_work_app/theme/theme.dart';
import 'my_flutter_app_icons.dart';


class Constants{
  Constants._();
  static const double padding =20;
  static const double avatarRadius =45;
}

class selecttype extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),
      home: Scaffold(
        //################  APP BAR   ########################//
        appBar: AppBar(
          backgroundColor: MyTheme.orange,
          title: Text("Select The Level"),
          actions: [IconButton(icon: Icon(MyFlutterApp.home), onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>contactus()));

          })],
        ),

        //################  DRAWER  ########################//
        drawer: Theme(
          data: Theme.of(context).copyWith( //This will change the drawer background to blue.
            canvasColor: Colors.transparent,
          ),
          child: Drawer(

          ),
        ),
        //################   Body   ########################//
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.1, 0.5],
              colors: [
                MyTheme.red,
                MyTheme.orange,
              ],
            ),
          ),
          child: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "Select Your Level!",
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Color(0xFFE92E30), fontWeight: FontWeight.bold),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(80),
                  child: TextButton(

                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                      decoration: BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Text(
                        "SIMPLE     LEVEL",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(color: Colors.black,fontWeight: FontWeight.bold),
                      ),
                    ),
                      onPressed:(){
                     //   Navigator.push(context,MaterialPageRoute(builder: (context)=>simple()));
                      }
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(80),
                  child: TextButton(
                    child: Container( width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                      decoration: BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Text("HARD     LEVEL",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(color: Colors.black,fontWeight: FontWeight.bold),),
                      ),
                     onPressed:(){
                    //   Navigator.push(context,MaterialPageRoute(builder: (context)=>hard1()));
                     }
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
