import 'package:assignment2/sign_up.dart';
import 'package:assignment2/signup_home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'constant.dart';
import 'other.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  getDriversList() async {
    return await Firestore.instance.collection('users').getDocuments();
  }

  QuerySnapshot querySnapshot;
  @override
  void initState() {
    super.initState();
    getDriversList().then((results) {
      setState(() {
        querySnapshot = results;
      });
    });
  }

  String name, password;
  String tName, tPassword;
  submit() {
    print('test');
    tName = name;
    tPassword = password;
    getDriversList().then((results) {
      setState(() {
        querySnapshot = results;
        final _value = querySnapshot.documents[0].data['Name'];
        final _value1 = querySnapshot.documents[0].data['Password'];
        if (_value == tName && _value1 == tPassword) {
          return Navigator.push(
              context, MaterialPageRoute(builder: (context) => SignUpHome()));
        } else
          return Navigator.push(
              context, MaterialPageRoute(builder: (context) => Other()));
      });
    });
  }

  String mas = 'Connect with';

  Widget _showDrivers() {
    if (querySnapshot != null) {
      return ListView.builder(
        primary: false,
        itemCount: querySnapshot.documents.length,
        padding: EdgeInsets.all(12.0),
        itemBuilder: (context, i) {
          return
              /*Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[],
              ),
              Divider(
                thickness: 0.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '${querySnapshot.documents[i].data['Name']}',
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                  VerticalDivider(
                    width: 5.0,
                  ),
                  Text(
                    '${querySnapshot.documents[i].data['Phone']}',
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          );*/
              Container(
            padding: EdgeInsets.only(left: 0.0),
            color: Color(0xFF95E2F9),
            child: Column(
              children: <Widget>[
                Divider(
                  height: 120.0,
                  color: Color(0xFF95E2F9),
                ),
                Center(
                  child: Image.asset('images/kiptus.png'),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10.0, left: 10.0, top: 25.0),
                  child: Container(
                      height: 370.0,
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
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Other()));
                              },
                              child: Text(
                                'Log In',
                                style: TextStyle(fontSize: 20.0),
                              )),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                textAlign: TextAlign.center,
                                onChanged: (value) {
                                  name = value;
                                },
                                decoration: kTextFieldDecoration.copyWith(
                                    hintText: 'Mobile Number Or Email')),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                textAlign: TextAlign.center,
                                onChanged: (value) {
                                  password = value;
                                },
                                decoration: kTextFieldDecoration.copyWith(
                                    hintText: 'Password')),
                          ),
                          /* Center(
                            child: Image.asset('images/log-in.png'),
                          ),*/
                          Container(
                            height: 30,
                            width: 80.0,
                            child: GestureDetector(
                              onTap: submit,
                              child: Container(
                                width: 260.0,
                                height: 60.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('images/log-in.png'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Forgot Password?',
                              //'${querySnapshot.documents[i].data['Phone']}',
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUp()));
                            },
                            child: Text(
                              'Create a new account',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.lightBlueAccent),
                            ),
                          ),
                          Divider(
                            height: 10.0,
                            color: Colors.white,
                          ),
                          Center(
                            child: Text(
                              mas,
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ),
                          Divider(
                            color: Colors.white,
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(''),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
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
                Divider(
                  height: 52.0,
                  color: Colors.white,
                )
              ],
            ),
          );
        },
      );
    } else {
      return CircularProgressIndicator();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF95E2F9),
        appBar: AppBar(
          backgroundColor: Color(0xFF95E2F9),
          title: FlatButton(
            color: Color(0xFF95E2F9),
            child: Center(child: Text('First Complete Registration')),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignUp()));
            },
          ),
        ),
        body: _showDrivers());
  }
}
