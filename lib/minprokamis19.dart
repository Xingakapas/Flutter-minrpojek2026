import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("joedu;"), backgroundColor: Colors.amber),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),

              Container(
                height: 150,
                margin: EdgeInsets.symmetric(horizontal: 10),
                color: Colors.red,
              ),

              SizedBox(height: 10),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 80,
                      margin: EdgeInsets.only(left: 10, right: 5),
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 80,
                      margin: EdgeInsets.only(left: 5, right: 10),
                      color: Colors.red,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    buildCircle(),
                    buildCircle(),
                    buildCircle(),
                    buildCircle(),
                    buildCircle(),
                    buildCircle(),
                    buildCircle(),
                    SizedBox(width: 10),
                  ],
                ),
              ),

              SizedBox(height: 20),

             
              Row(
                children: [
                  Expanded(child: Container(height: 150, color: Colors.red)),
                  Expanded(child: Container(height: 150, color: Colors.blue)),
                  Expanded(child: Container(height: 150, color: Colors.yellow)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCircle() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      width: 70,
      height: 70,
      decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
    );
  }
}
