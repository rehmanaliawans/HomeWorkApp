import 'package:home_work_app/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:home_work_app/UI/selected_type.dart';
import 'contactus.dart';


class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(

        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: 150,
                      height: 100,
                      decoration: new BoxDecoration(
                          image: new DecorationImage(
                            image: new AssetImage("assets/workk.gif"),
                            fit: BoxFit.fill,
                          )
                      )
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "Home Work Management App",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),

          ListTile(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => selecttype()));
            },
            leading: Icon(
              Icons.assessment,
              color: Colors.black,
            ),
            title: Text("Home Page"),
          ),
          ListTile(
            onTap: () {
            },
            leading: Icon(
              Icons.ac_unit,
              color: Colors.black,
            ),
            title: Text("Simple Mode"),
          ),
          ListTile(
            onTap: () {

            },
            leading: Icon(
              Icons.ac_unit_rounded,
              color: Colors.black,
            ),
            title: Text("Hard Mode"),
          ),

          ListTile(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => contactus()));
            },
            leading: Icon(
              Icons.account_circle,
              color: Colors.black,
            ),
            title: Text("Contact Us"),
          ),
        ]
    );
  }
}