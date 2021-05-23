import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_work_app/UI/contactus.dart';
import 'package:imagebutton/imagebutton.dart';
import 'package:home_work_app/theme/theme.dart';
import 'Navigation_Drawer.dart';
import 'SingIn.dart';
import 'my_flutter_app_icons.dart';
import 'AppColors.dart';

class Constants {
  Constants._();
  static const double padding = 20;
  static const double avatarRadius = 45;
}

class selecttype extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: Scaffold(
        //################  APP BAR   ########################//
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: kPrimaryGradient,
            ),
          ),
          title: Text("Select  User Type"),
          actions: [
            IconButton(
                icon: Icon(MyFlutterApp.home),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => selecttype()));
                }),
            IconButton(
              icon: const Icon(Icons.contact_phone_outlined),
              tooltip: 'ContactUs',
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => contactus()));
              },
            ),
          ],
        ),

        //################  DRAWER  ########################//
        drawer: Theme(
          data: Theme.of(context).copyWith(
              //This will change the drawer background to blue.

              ),
          child: Drawer(
            child: MainDrawer(),
          ),
        ),
        //################   Body   ########################//

        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 60.0),
                    child: ImageButton(
                      children: <Widget>[],
                      width: 381,
                      height: 136,
                      pressedImage: Image.asset(
                        "admin.png",
                      ),
                      unpressedImage: Image.asset("admin.png"),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => signin()));
                      },
                    )),
                Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: ImageButton(
                      children: <Widget>[],
                      width: 381,
                      height: 136,
                      pressedImage: Image.asset(
                        "teach.png",
                      ),
                      unpressedImage: Image.asset("teach.png"),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => signin()));
                      },
                    )),
                Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: ImageButton(
                      children: <Widget>[],
                      width: 381,
                      height: 136,
                      pressedImage: Image.asset(
                        "student.png",
                      ),
                      unpressedImage: Image.asset("student.png"),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => signin()));
                      },
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
