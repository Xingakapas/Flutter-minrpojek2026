import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final PageController _controller =
      PageController(viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("nama", style: TextStyle(fontSize: 28)),
                  Row(
                    children: [
                      circleButton(),
                      SizedBox(width: 10),
                      circleButton(),
                    ],
                  )
                ],
              ),

              SizedBox(height: 20),

              
              box(Colors.orange, height: 120),

              SizedBox(height: 20),

              
              Row(
                children: [
                  Expanded(child: box(Colors.red, height: 80)),
                  SizedBox(width: 10),
                  Expanded(child: box(Colors.blue, height: 80)),
                ],
              ),

              SizedBox(height: 20),

              Text("Sepotlek", style: TextStyle(fontSize: 20)),

              SizedBox(height: 10),

              
              SizedBox(
                height: 150,
                child: PageView(
                  controller: _controller,
                  children: [
                    greenCard("Saldo"),
                    greenCard("keluaran"),
                    greenCard("kmaasukan"),
                  ],
                ),
              ),

              SizedBox(height: 30),

              Text("depan rencana", style: TextStyle(fontSize: 20)),

              SizedBox(height: 10),

              box(Colors.orange,
                  height: 100, text: "rencana bayr"),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Shortkat", style: TextStyle(fontSize: 20)),
                  Text("edit"),
                ],
              ),

              SizedBox(height: 10),

              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: List.generate(
                  6,
                  (index) => Container(
                    width:
                        (MediaQuery.of(context).size.width - 42) / 2,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),

              box(Colors.brown.shade200,
                  height: 70, text: "Tambah shrokut"),

              SizedBox(height: 20),

              
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly,
                children:
                    List.generate(5, (index) => circleButton()),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget box(Color color,
      {double height = 100, String text = ""}) {
    return Container(
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 18),
      ),
    );
  }

  Widget circleButton() {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
      ),
    );
  }


  Widget greenCard(String text) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(16),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
            fontSize: 18, color: Colors.white),
      ),
    );
  }
}
