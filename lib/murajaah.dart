// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyWidget(),
//     );
//   }
// }

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
          
//           const Center(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Text(
//                   'haol ',
//                   style: TextStyle(fontSize: 24),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   'haol ',
//                   style: TextStyle(fontSize: 24),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   'haol ',
//                   style: TextStyle(fontSize: 24),
//                 ),
//               ],
//             ),
//           ),
          
         
//           Positioned(
//             left: 0,
//             top: 0,
//             child: Row(
//               children: [
            
//                 Container(
//                   width: 80,
//                   height: 80,
//                   color: Colors.blue,
//                 ),
               
//                 Container(
//                   width: 80,
//                   height: 80,
//                   color: Colors.red,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyWidget(),
//     );
//   }
// }

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Row(
//         children: [
        
//           Expanded(
//             child: Container(
//               height: 200,
//               color: Colors.blue,
//             ),
//           ),
          
        
//           Expanded(
//             child: Container(
//               height: 200,
//               color: Colors.red,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyWidget(),
//     );
//   }
// }

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
            
//             Container(
//               width: 200,
//               height: 100,
//               color: Colors.blue,
//             ),
            
//             const SizedBox(height: 10),
          
//             Row(
//               mainAxisSize: MainAxisSize.min,
//               children: [
             
//                 Container(
//                   width: 95,
//                   height: 100,
//                   color: Colors.red,
//                 ),
                
//                 const SizedBox(width: 10),
                
                
//                 Container(
//                   width: 95,
//                   height: 100,
//                   color: Colors.green,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

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
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          
          Flexible(
            flex: 2,
            child: Container(
              height: 200,
              color: Colors.blue,
            ),
          ),
          
          
          Flexible(
            flex: 1,
            child: Container(
              height: 200,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}