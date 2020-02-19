import 'dart:async';

import 'package:assignment2/main.dart';
import 'package:assignment2/signup_home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import 'constant.dart';
import 'home.dart';

final userRef = Firestore.instance.collection('users');

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  String name;
  String number;
  String password;
  String postID = Uuid().v4();
  final _scaffold = GlobalKey<ScaffoldState>();

  creatPost({
    String name,
    String number,
    String password,
  }) {
    userRef
        .document(postID)
        .setData({'Name': name, 'Phone': number, 'Password': password});
  }

  submit() {
    creatPost(name: name, number: number, password: password);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SignUpHome()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF95E2F9),
      body: ListView(
        children: <Widget>[
          Divider(
            height: 100.0,
            color: Color(0xFF95E2F9),
          ),
          Center(
            child: Image.asset('images/kiptus.png'),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.0, left: 10.0, top: 25.0),
            child: Container(
                height: 400.0,
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                        topLeft: const Radius.circular(20.0),
                        topRight: const Radius.circular(20.0))),
                child: new Column(
                  children: <Widget>[
                    Divider(
                      height: 10.0,
                    ),
                    FlatButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Test()));
                        },
                        child: Text(
                          'Log Up',
                          style: TextStyle(fontSize: 20.0),
                        )),
                    /*Center(
                      child: Text(
                        'Log In',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),*/
                    Column(
                      key: _formKey,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: TextField(
                              keyboardType: TextInputType.text,
                              textAlign: TextAlign.center,
                              onChanged: (value) {
                                name = value;
                              },
                              decoration: kTextFieldDecoration.copyWith(
                                  hintText: 'Name')),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: TextField(
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              onChanged: (value) {
                                number = value;
                              },
                              decoration: kTextFieldDecoration.copyWith(
                                  hintText: 'Mobile Number')),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: TextField(
                              keyboardType: TextInputType.visiblePassword,
                              textAlign: TextAlign.center,
                              onChanged: (value) {
                                password = value;
                              },
                              decoration: kTextFieldDecoration.copyWith(
                                  hintText: 'Password')),
                        ),
                      ],
                    ),
                    /* Center(
                      child: Image.asset('images/submit.png'),
                    ),*/
                    GestureDetector(
                      onTap: () {
                        submit();
                      },
                      child: Container(
                        width: 150.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/submit.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Divider(
                      height: 50.0,
                    ),
                    Center(
                      child: Text(
                        'Connect with',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    Divider(
                      height: 10.0,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(''),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Image.asset('images/fb.png'),
                              //VerticalDivider(),
                              Image.asset('images/google.png'),
                              //VerticalDivider(),
                              Image.asset('images/wizdoor.png'),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Text(''),
                        ),
                      ],
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
