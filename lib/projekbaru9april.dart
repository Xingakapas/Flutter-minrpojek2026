import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[300],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.percent), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ""),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Row(
                children: [
                 
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("i walet",
                            style: TextStyle(color: Colors.white)),
                        Text("Sopi pey",
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),

                  
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text("diskon",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold)),
                        Text("10.000",
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.red)),
                        SizedBox(height: 4),
                        Text(
                          "sk berlakulah",
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

           
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 5,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(10, (index) {
                  return Column(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Icon(Icons.apps, color: Colors.white),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "Menu",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  );
                }),
              ),
            ),

            const SizedBox(height: 16),

            
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              color: Colors.orange[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Faahhhh sale",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),

                  SizedBox(
                    height: 220,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 160,
                          margin: const EdgeInsets.only(right: 12),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                            
                              const Center(
                                child: Icon(
                                  Icons.fastfood,
                                  size: 60,
                                  color: Colors.orange,
                                ),
                              ),

                              const SizedBox(height: 8),

                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 4, horizontal: 6),
                                color: Colors.red,
                                child: const Text(
                                  "produk cuy",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10),
                                ),
                              ),

                              const SizedBox(height: 6),

                              const Text(
                                "borger 500 gram",
                                style: TextStyle(fontSize: 10),
                              ),

                              const SizedBox(height: 6),

                              const Text(
                                "35 reboe",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),

                              const Text(
                                "cepet pesen cik",
                                style: TextStyle(fontSize: 9),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
