import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:p3_MAIN/theme/themeData.dart';
import 'package:p3_MAIN/UIWidgets/ButtonWidgets.dart';
import 'package:p3_MAIN/loginScreen.dart';
import 'package:p3_MAIN/services/database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:p3_MAIN/theme/themeData.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState()=> _SettingsPageState();
 
}
  

  //const SettingsPage({Key key}) : super(key: key);
class _SettingsPageState extends State<SettingsPage>{
    var _value1 = false;
    var _value2  = false;
    var _value3 = false;
    final int pantherID = 1234567;
    void nullReturn() {
   return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back,
                color: AppTheme.Colors.blueFIU, size: 35),
            onPressed: () {
              Navigator.pop(context);
            }, // TODO: Go back to homepage functionality
          )),
      body: Padding(
        padding: const EdgeInsets.only(right: 25, left: 25),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Settings and\nPreferences",
                  style: Theme.of(context).textTheme.headline1,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  child: RoundedBox(
                      "Logged in as: $pantherID",
                      Colors.white,
                      14.0,
                      25.0,
                      AppTheme.Colors.blueFIU,
                      50.0,
                      200.0,
                      Alignment.center),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Select Language:",
                  style:
                      new TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
                Row(
                  children: <Widget>[
                    RoundedButtons(
                        "English",
                        17.0,
                        50.0,
                        100.0,
                        Color.fromRGBO(224, 224, 224, 1.0),
                        Colors.black,
                        30.0,
                        nullReturn),
                    SizedBox(width: 30),
                    RoundedButtons(
                        "Spanish",
                        17.0,
                        50.0,
                        100.0,
                        Color.fromRGBO(224, 224, 224, 1.0),
                        Colors.black,
                        30.0,
                        nullReturn),
                    SizedBox(width: 30),
                    RoundedButtons(
                        "Creole",
                        17.0,
                        50.0,
                        100.0,
                        Color.fromRGBO(224, 224, 224, 1.0),
                        Colors.black,
                        30.0,
                        nullReturn)
                  ],
                ),
                SizedBox(height: 20),
                
                Text(
                  "Notifications &\nPreferences:",
                  style:
                      new TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                ),
                SizedBox(height: 10),
                CheckboxListTile(
                  value: _value1,
                  checkColor: Colors.white,
                  activeColor: Color.fromRGBO(8, 30, 63, 1.0),
                  onChanged: ( value ){
                    setState((){
                      _value1  = value;
                    });
                  },
                  title: Text(
                    "Face ID",
                    style:  new TextStyle(fontSize: 22, decoration: TextDecoration.underline),
                  ),
                ),
                SizedBox(height: 2),
                CheckboxListTile(
                  value: _value2,
                  checkColor: Colors.white,
                  activeColor: Color.fromRGBO(8, 30, 63, 1.0),
                  onChanged: ( value ){
                    setState((){
                      _value2  = value;
                    });
                  },
                  title: Text(
                    "Get Screening Reminders",
                    style:  new TextStyle(fontSize: 22, decoration: TextDecoration.underline),
                  ),
                ),
    
                SizedBox(height: 5),
               CheckboxListTile(
                  value: _value3,
                  checkColor: Colors.white,
                  activeColor: Color.fromRGBO(8, 30, 63, 1.0),
                  onChanged: ( value ){
                    setState((){
                      _value3  = value;
                    });
                  },
                  title: Text(
                    "Notify Instructors",
                    style:  new TextStyle(fontSize: 22, decoration: TextDecoration.underline),
                  ),
                ),
                Text(
                  "The COVID Response Team will only notify instructors if the student has recieved a RED on their safety screening. It is the student’s responsibilility to follow up with the instructor regardless of screening outcome.",
                  style: new TextStyle(fontSize: 13),
                  
                ),
                SizedBox(height: 40),
                Center(
                  child : Container(
                    height:55,
                    width: 180,
                      child: RaisedButton(
                      color: AppTheme.Colors.blueFIU,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                      child: Text(
                      "Logout",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                      onPressed: () async {
                        print(FirebaseAuth.instance.currentUser);
                        await FirebaseAuth.instance.signOut();
                        print("Signed user out.");
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/login', (route) => false);
                      }),
                  ),
                ),
                SizedBox(
                  height: 40,
                )
              ],
              crossAxisAlignment: CrossAxisAlignment.start),
        ),
      ),
    );
  }
}



