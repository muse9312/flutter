import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // 앱 시작해주세요
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 글자위젯
    // return MaterialApp(home: Text('안녕'));

    // 아이콘 위젯
    // return MaterialApp(home: Icon(Icons.star));

    // 이미지 위젯
    // return MaterialApp(home: Image.asset('assets/Frame 6.png'));

    // 박스 위젯
    // return MaterialApp(
    //     home: Center(
    //   child: Container(width: 30, height: 30, color: Colors.blue),
    // ));

    // Scaffold
    return MaterialApp(
        home: Scaffold(
      // 앱을 상중하로 나눠주는 위젯
      appBar: AppBar(
          title: Text(
        '앱임',
      )),
      body: Container(
        child: Text('안녕'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
            height: 50,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.phone),
                  Icon(Icons.message),
                  Icon(Icons.contact_page),
                ])),
      ),
    ));
  }
}
