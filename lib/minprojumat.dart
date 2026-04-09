import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tugas20! "),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [

          SizedBox(height: 10),

          
          Container(
            height: 140,
            child: PageView(
              children: [

                
                promoBox("keshbek", Colors.orange),

                
                promoBox("flesh sel", Colors.blue),

               
                promoBox("ongkir gratis", Colors.green),
              ],
            ),
          ),

          SizedBox(height: 15),

       
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              menuBox(Icons.shopping_bag, "peroduk"),
              menuBox(Icons.local_offer, "peromo"),
              menuBox(Icons.category, "keategori"),
              menuBox(Icons.person, "perofile"),
            ],
          ),

          SizedBox(height: 20),

          
          Expanded(
            child: ListView(
              children: [
                item("laptop"),
                item("mouse"),
                item("keyboard"),
                item("monitor"),
                item("printer"),
                item("headset"),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget promoBox(String text, Color warna) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: warna,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  
  Widget menuBox(IconData icon, String text) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white),
          Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 12),
          )
        ],
      ),
    );
  }

 
  Widget item(String nama) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(nama),
    );
  }
}
