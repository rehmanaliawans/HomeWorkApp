import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';
import 'package:home_work_app/theme//constants.dart';
import 'my_flutter_app_icons.dart';
import 'selected_type.dart';
class contactus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text("Contact Us"),
          actions: [IconButton(icon: Icon(MyFlutterApp.home), onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>selecttype()));

          })],
        ),
        drawer: Theme(
          data: Theme.of(context).copyWith( //This will change the drawer background to blue.
            canvasColor: Colors.transparent,
          ),
          child: Drawer(

          ),
        ),

        body: Container(
          decoration: BoxDecoration(
            gradient: kPrimaryGradient,
          ),
          child: ContactUs(
            logo: AssetImage('images/profile.jpeg'),
            email: 'rehamnaliawans@gmail.com',
            companyName: 'Tech Creations',
            phoneNumber: '+923086464008',
            githubUserName: 'rehmanaliawans',
            linkedinURL: 'https://www.linkedin.com/in/rehman-ali-8a94b6150/',
            tagLine: 'Flutter Developer',
            twitterHandle: 'REHMAN6464',
            instagram: 'its_maaaan',
          ),
        ),
        bottomNavigationBar: ContactUsBottomAppBar(

          companyName: 'Tech Creations',
          textColor: Colors.white,
          backgroundColor: Colors.teal.shade300,
          email: 'rehmanaliawans@gmail.com',
        ),
      ),
    );
  }
}
