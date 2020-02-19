import 'package:flutter/material.dart';

class Other extends StatefulWidget {
  @override
  _OtherState createState() => _OtherState();
}

class _OtherState extends State<Other> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF95E2F9),
      body: Column(
        children: <Widget>[
          /* Divider(
            height: 200.0,
          ),*/
          Padding(
            padding: EdgeInsets.only(top: 200.0),
          ),
          Center(
            child: Image.asset('images/kiptus.png'),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50.0),
          ),
          Center(
            child: Text(
              'OTP',
              style: TextStyle(fontSize: 40.0),
            ),
          ),
          Divider(
            thickness: 0.0,
            indent: 0.0,
            color: Color(0xFF95E2F9),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 50.0,
                width: 50.0,
                //padding: EdgeInsets.only(left: 5.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                        topLeft: const Radius.circular(10.0),
                        topRight: const Radius.circular(10.0))),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
              ),
              Container(
                height: 50.0,
                width: 50.0,
                //padding: EdgeInsets.only(left: 5.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                        topLeft: const Radius.circular(10.0),
                        topRight: const Radius.circular(10.0))),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
              ),
              Container(
                height: 50.0,
                width: 50.0,
                //padding: EdgeInsets.only(left: 5.0, right: 10.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                        topLeft: const Radius.circular(10.0),
                        topRight: const Radius.circular(10.0))),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
              ),
              Container(
                height: 50.0,
                width: 50.0,
                //padding: EdgeInsets.only(left: 5.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                        topLeft: const Radius.circular(10.0),
                        topRight: const Radius.circular(10.0))),
              ),
            ],
          ),
          Divider(
            color: Color(0xFF95E2F9),
          ),
          Center(
            child: Text('Enter 4 Digit Code 57'),
          ),
          Divider(
            color: Color(0xFF95E2F9),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 75.0),
                  child: Image.asset('images/resend.png'),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 65.0),
                  child: Image.asset('images/confirm.png'),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
