import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart'; // 플루터 SDK에서 제공되는 기본적인 라이브러리중 하나

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(body: TextWiget()),
//   ));
// }

// class TextWiget extends StatelessWidget {
//   const TextWiget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Center(
//         child: Text(
//           'Hello  world!',
//           style: TextStyle(color: Colors.black, fontSize: 40),
//         ),
//       ),
//     );
//   }
// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('This is appbar '),
      ),
    ));
  }
}
