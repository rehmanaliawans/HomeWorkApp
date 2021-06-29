import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_work_app/animation/fade_animation.dart';
import 'classes_page_teacher.dart';



class TaskPage extends StatefulWidget {


  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>(); // key for form


  TextEditingController subjectControl = new TextEditingController(); // input controller from users
  TextEditingController taskControl = new TextEditingController(); // input controller from users

  @override
  void initState() {
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                  Color.fromRGBO(154, 233, 178, 1),
                  Color.fromRGBO(173, 187, 238, 1),
                ])),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                Widget>[
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                        child: FadeAnimation(
                            1.3,
                            Text(
                              "Insert Task",
                              style: GoogleFonts.antic(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                fontSize: 40,
                              ),
                            ))),
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60),
                              topRight: Radius.circular(60))),
                      child: Padding(
                          padding: EdgeInsets.all(30),
                          child: SingleChildScrollView(
                              child: Column(children: <Widget>[
                                SizedBox(
                                  height: 60,
                                ),
                                FadeAnimation(
                                  1.4,
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                              Color.fromRGBO(225, 95, 27, .3),
                                              blurRadius: 20,
                                              offset: Offset(0, 10))
                                        ]),
                                    child: Form(
                                      key: _formKey,
                                      child: Column(children: <Widget>[
                                        Container(
                                          width: double.infinity,
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  bottom: BorderSide(
                                                      color: Colors.grey[200]))),
                                          child: TextFormField(
                                            controller: subjectControl,
                                            decoration: InputDecoration(
                                                hintText: "Write Title Of Task",
                                                hintStyle:
                                                TextStyle(color: Colors.grey),
                                                border: InputBorder.none),
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 100,
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  bottom: BorderSide(
                                                      color: Colors.grey[200]))),
                                          child: TextFormField(
                                            controller: taskControl,
                                            decoration: InputDecoration(
                                                hintText: "Write Task Here Please",
                                                hintStyle:
                                                TextStyle(color: Colors.grey),
                                                border: InputBorder.none),
                                            validator: (value) {
                                              if (value.length < 20) {
                                                return '$value length not long enough';
                                              } else {
                                                return null;
                                              }
                                            },
                                          ),
                                        ),
                                        SizedBox(
                                          height: 40,
                                        ),
                                        FadeAnimation(
                                            1.6,
                                            Container(
                                              height: 50,
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 50),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(50),
                                                  color: Color.fromRGBO(
                                                      154, 233, 178, 1)),
                                              child: Center(
                                                child: FlatButton(
                                                    child: Text(
                                                      "Send Task",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                          FontWeight.bold),
                                                    ),
                                                    onPressed: () {

                                                      Map <String,dynamic> data={"Title":subjectControl.text,"Subject":taskControl.text};
                                                      FirebaseFirestore.instance.collection("Add Task").add(data);
                                                      // when user press this button send task using GetHelper
                                                      // if you do not understant go to GetHelper
                                                      //   GetHelper.sendTask(
                                                      //       _formKey,
                                                      //       context,
                                                      //       widget.schoolId,
                                                      //       widget.groupId,
                                                      //       subjectControl.text,
                                                      //       taskControl.text);
                                                      return showDialog(
                                                        context: context,
                                                        builder: (ctx) => AlertDialog(
                                                          title: Text("Alert Dialog Box"),
                                                          content: Text("inserted data"),
                                                          actions: <Widget>[
                                                            FlatButton(
                                                              onPressed: () {
                                                                Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(builder: (context) => TeacherClasses()),
                                                                );
                                                              },
                                                              child: Text("okay"),
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    }
                                                ),
                                              ),
                                            )),
                                        SizedBox(
                                          height: 50,
                                        ),
                                      ]),
                                    ),
                                  ),
                                ),
                              ])))))
            ])));
  }
}
