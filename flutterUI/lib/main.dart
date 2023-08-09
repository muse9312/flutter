import 'package:flutter/material.dart';
import 'package:toonfilx/widget/Button.dart';
import 'package:toonfilx/widget/current_card.dart';

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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              padding: EdgeInsets.fromLTRB(24, 40, 24, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // total balance text
                  Text(
                    "Total Balance",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontWeight: FontWeight.w600,
                        fontSize: 22),
                  ),

                  // 숫자 text
                  Container(
                    margin: EdgeInsets.only(top: 12),
                    child: Text('\$5 194 382',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 44)),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  // 버튼
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button(
                          text: 'Transfer',
                          textColor: Colors.black,
                          bgborder: Color(0xfff1b33b)),
                      Button(
                        text: "Request",
                        textColor: Colors.white,
                        bgborder: Color(0xff1f2123),
                      )
                    ],
                  ),

                  // Wallets text
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Wallets",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 34,
                                fontWeight: FontWeight.w600)),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "View All",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.4)),
                            )),
                      ],
                    ),
                  ),

                  // wallets box

                  Container(
                      margin: EdgeInsets.only(top: 24),
                      child: Column(
                        children: [
                          CurrencyCard(
                            name: 'korea',
                            code: 'EUR',
                            amount: '6 428',
                            icon: Icons.euro_rounded,
                            isInverted: false,
                          ),
                          Transform.translate(
                            offset: Offset(0, -28),
                            child: CurrencyCard(
                              name: 'Dollor',
                              code: 'USD',
                              amount: '55 622',
                              icon: Icons.euro_rounded,
                              isInverted: true,
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(0, -56),
                            child: CurrencyCard(
                              name: 'Rupee',
                              code: 'INR',
                              amount: '28 981',
                              icon: Icons.euro_rounded,
                              isInverted: false,
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
