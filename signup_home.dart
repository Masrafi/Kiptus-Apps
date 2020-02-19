import 'package:flutter/material.dart';

class SignUpHome extends StatefulWidget {
  @override
  _SignUpHomeState createState() => _SignUpHomeState();
}

class _SignUpHomeState extends State<SignUpHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Divider(
            height: 60.0,
          ),
          Container(
            height: 90.0,
            decoration: BoxDecoration(color: Color(0xFF95E2F9)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: <Widget>[Image.asset('images/kiptus.png')],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 30.0, right: 5.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Masrafi',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('Anam')
                          ],
                        ),
                      ),
                      Image.asset('images/pr.png')
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.dehaze,
                size: 35.0,
                color: Colors.lightBlue,
              ),
            ],
          ),
          Container(
            height: 150.0,
            width: 250.0,
            decoration: BoxDecoration(color: Color(0xFFD8D8D8)),
            child: Center(
                child: Padding(
              padding: EdgeInsets.only(top: 40.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Click/Upload',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'Your Product',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ],
              ),
            )),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 60.0),
                  child: Image.asset('images/browse_button.png'),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 50.0),
                  child: Image.asset('images/capture_button.png'),
                ),
              )
            ],
          ),
          Divider(
            height: 194.0,
            color: Colors.white,
          ),
          Container(
              alignment: Alignment.bottomLeft,
              height: 70.0,
              width: 500.0,
              color: Color(0xFF95E2F9),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Icon(
                        Icons.home,
                        size: 50.0,
                        color: Colors.blue,
                      ),
                    ),
                    Expanded(
                      child: Icon(
                        Icons.drive_eta,
                        size: 50.0,
                        color: Colors.blue,
                      ),
                    ),
                    Expanded(
                      child: Icon(
                        Icons.business,
                        size: 50.0,
                        color: Colors.blue,
                      ),
                    ),
                    Expanded(
                      child: Icon(
                        Icons.query_builder,
                        size: 50.0,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
