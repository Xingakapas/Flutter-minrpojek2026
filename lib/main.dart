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
        backgroundColor: Colors.grey[300],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

            
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                 
                  Container(
                    width: 180,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(
                        color: Colors.black,
                        width: 8,
                      ),
                    ),
                  ),

                  SizedBox(width: 20),

                  
                  Column(
                    children: [
                      Container(
                        width: 120,
                        height: 115,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.all(
                            color: Colors.black,
                            width: 8,
                          ),
                        ),
                      ),

                      SizedBox(height: 20),

                      Container(
                        width: 120,
                        height: 115,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          border: Border.all(
                            color: Colors.black,
                            width: 8,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 40),

              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black,
                        width: 6,
                      ),
                    ),
                  ),

                  SizedBox(width: 30),

                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black,
                        width: 6,
                      ),
                    ),
                  ),

                  SizedBox(width: 30),

                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black,
                        width: 6,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
