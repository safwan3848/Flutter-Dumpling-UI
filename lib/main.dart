// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:dumpling_ui/donut_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F0F1),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 185.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/model2.jpg'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(25.0)),
                      ),
                      Text(
                        'Francis Austin',
                        style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF42403F)),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.cake, color: Colors.grey.withOpacity(0.7)),
                )
              ],
            ),
          ),
          Container(
            height: 200.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/dumpling.png'),
                    fit: BoxFit.cover)),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Text(
              'DUMPLINGS',
              style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF322F2E)),
            ),
          ),
          SizedBox(height: 10.0),
          Center(
            child: Text(
              '喜欢订阅',
              style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF808080)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: MediaQuery.of(context).size.width - 30.0,
              child: Text(
                'These tasty treats make a perfect appetizer or you can serve them as a main dish. For a main dish count on about 15 dumplings per person. Serve with hoisin sauce, hot Chinese-style mustard and toasted sesame seeds.',
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 12.5,
                    color: Color(0xFF8E8989)),
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove_circle_outline),
                        color: Color(0xFFC4C2C5)),
                    Container(
                        width: 125.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              '\$6.99',
                              style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF322F2E)),
                            ),
                            Text(
                              '1 ORDER',
                              style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF322F2E)),
                            ),
                          ],
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add_circle_outline),
                        color: Color(0xFF4C4A4A)),
                  ],
                ),
              )),
          Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => DountPage()));
                  },
                  child: Container(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xFF312F2E),
                    child: Center(
                      child: Text('Add to Basket',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ))),
          SizedBox(height: 3.0),
          Center(
            child: Text(
              'Get the second order in half price',
              style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 12.0,
                  color: Color(0xFF8E8989)),
            ),
          ),
        ],
      ),
    );
  }
}
