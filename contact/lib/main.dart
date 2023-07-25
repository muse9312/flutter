import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // 앱 시작해주세요
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 1;
  // var title = "연락처앱";

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
    // return MaterialApp(
    //     home: Scaffold(
    //   // 앱을 상중하로 나눠주는 위젯
    //   appBar: AppBar(
    //       title: Text(
    //     '앱임',
    //   )),
    //   body: Container(
    //     child: Text('안녕'),
    //   ),
    //   bottomNavigationBar: BottomAppBar(
    //     child: SizedBox(
    //         height: 50,
    //         child: Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //             children: [
    //               Icon(Icons.phone),
    //               Icon(Icons.message),
    //               Icon(Icons.contact_page),
    //             ])),
    //   ),
    // ));

    // margin, padding, border, Align
    // return MaterialApp(
    //     home: Scaffold(
    //   appBar: AppBar(
    //     title: Text('앱임'),
    //   ),
    //   body: Align(
    //     alignment: Alignment.centerLeft,
    //     child: Container(
    //       width: double.infinity,
    //       height: 50,
    //       decoration: BoxDecoration(
    //           color: Colors.blue, border: Border.all(color: Colors.black)),
    //     ),
    //   ),
    // ));

    // return MaterialApp(
    //   home: Scaffold(
    //       appBar: AppBar(
    //         title: Text("앱임"),
    //       ),
    //       body: SizedBox(
    //           child: ElevatedButton(
    //         onPressed: () {},
    //         child: Text("글자"),
    //         style: ButtonStyle(),
    //       ))),
    // );

    // return MaterialApp(
    //   home: Scaffold(
    //     appBar: AppBar(),
    //     body: Row(
    //       children: [
    //         Flexible(child: Container(color: Colors.red), flex: 5,),
    //         Flexible(child: Container(color: Colors.green), flex: 5,),
    //         Flexible(child: Container(color: Colors.black), flex: 5,),
    //       ],
    //     ),
    //   ),
    // );

    // return MaterialApp(
    //   home: Scaffold(
    //     appBar: AppBar(),
    //     body: Container(
    //         height: 150,
    //         padding: EdgeInsets.all(20),
    //         child: Row(
    //           children: [
    //             Image.asset('assets/Frame 6.png', width: 150),
    //             Container(
    //               child: Column(children: [
    //                 Text('캐논'),
    //                 Text('끌올 10분전'),
    //                 Text('1000원'),
    //                 Icon(Icons.heart_broken),
    //               ]),
    //             )
    //           ],
    //         )),
    //   ),
    // );

    // 커스텀 위젯

    return MaterialApp(
        home: Scaffold(
            floatingActionButton: FloatingActionButton(
                child: Text(a.toString()),
                onPressed: () {
                  setState(() {
                    a++;
                  });
                }),
            appBar: AppBar(
              title: Text("연락처앱"),
            ),
            body: ShopItem(),
            bottomNavigationBar: BottomItem()));
  }
}

class ShopItem extends StatefulWidget {
  const ShopItem({super.key});

  @override
  State<ShopItem> createState() => _ShopItemState();
}

class _ShopItemState extends State<ShopItem> {
  var name = ["김세영", "박진아", "오세원"];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (context, item) {
          return ListTile(
            leading: Image.asset("assets/Frame 6.png"),
            title: Text(name[item]),
          );
        });
  }
}

class BottomItem extends StatelessWidget {
  const BottomItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.phone),
          Icon(Icons.message),
          Icon(Icons.contact_page)
        ],
      ),
    );
  }
}
