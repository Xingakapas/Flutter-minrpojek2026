import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Colors.yellow,
            child: const Text(
              "Welcome",
              style: TextStyle(fontSize: 30),
            ),
          ),

          Container(
            height: 200,
            color: Colors.grey, // Background biar keliatan
            child: PageView(
              controller: _controller,
              children: [
                pageItem(Colors.red, "Halaman 1"),
                pageItem(Colors.blue, "Halaman 2"),
                pageItem(Colors.green, "Halaman 3"),
              ],
            ),
          ),

          // Menu bar
          Container(
            color: Colors.grey[300],
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                menuItem("bagian 1", Colors.yellow),
                menuItem("bagian 2", Colors.green),
                menuItem("bagian 3", Colors.pink),
                menuItem("bagian 4", Colors.orange),
              ],
            ),
          ),

         
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.grey,
                    child: const Center(child: Text("bagian 1")),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue[300],
                    child: const Center(child: Text("bagian 2")),
                  ),
                ),
              ],
            ),
          ),

          Container(
            height: 100,
            color: Colors.purple,
            child: const Center(child: Text("bagian 3")),
          ),
        ],
      ),
    );
  }

  Widget pageItem(Color color, String text) {
    return Container(
      color: color,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }

  Widget menuItem(String text, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(text),
    );
  }
}