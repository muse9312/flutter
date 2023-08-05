import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff181818),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Padding(
                padding:
                    // const EdgeInsets.fromLTRB(24, 0, 24, 24),
                    const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_back_outlined),
                      style: ButtonStyle(),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Hey, Sera",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 28),
                        ),
                        Text(
                          "Welcome back",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Column(
                children: [Text("Total Balance"), Text('5194382'), Row()],
              ),
            )
          ],
        ),
      ),
    );
  }
}
