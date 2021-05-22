import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_work_app/UI/contactus.dart';
import 'package:imagebutton/imagebutton.dart';
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
          backgroundColor: kOrangeN,
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
                kSelectedType1,
                kSelectedType2,
              ],
            ),
          ),
          child: Center(
            child: Column(
              children: [


                Container(
                  margin: EdgeInsets.only(top: 160.0),

                        child: ImageButton(
                          children: <Widget>[],
                          width: 381,
                          height: 136,
                          pressedImage: Image.asset(
                            "admin.png",
                          ),
                          unpressedImage: Image.asset("admin.png"),
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>contactus()));
                          },
                        )

                  ),
                Container(
                    margin: EdgeInsets.only(top: 160.0),

                    child: ImageButton(
                      children: <Widget>[],
                      width: 381,
                      height: 136,
                      pressedImage: Image.asset(
                        "teach.png",
                      ),
                      unpressedImage: Image.asset("teach.png"),
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>contactus()));
                      },
                    )

                ),
                Container(
                    margin: EdgeInsets.only(top: 160.0),

                    child: ImageButton(
                      children: <Widget>[],
                      width: 381,
                      height: 136,
                      pressedImage: Image.asset(
                        "student.png",
                      ),
                      unpressedImage: Image.asset("student.png"),
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>contactus()));
                      },
                    )

                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
