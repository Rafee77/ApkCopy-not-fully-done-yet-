import 'package:dana_copy/MenuBottom.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final List<String> imagepaths = [
    'assets/promo1.png'
        'assets/promo2.png'
        'assets/promo3.png'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Dana tiruan',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images-removebg-preview (2).png',
                  width: 24.0,
                  height: 24.0,
                ),
                SizedBox(width: 0),
                Text(
                  'Dana',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.mail),
            ),
          ],
          backgroundColor: Colors.blue,
        ),
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: double.infinity,
              height: 165,
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/scan.png',
                        width: 40,
                        height: 40,
                      ),
                      Text(
                        "Scan",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/isi-saldo.png',
                        width: 40,
                        height: 40,
                      ),
                      Text(
                        "Isi Saldo",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/kirim.png',
                        width: 40,
                        height: 40,
                      ),
                      Text(
                        "Kirim",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/minta.png',
                        width: 40,
                        height: 40,
                      ),
                      Text(
                        "Minta",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 90,
              child: Container(
                width: 125,
                height: 350,
                padding: const EdgeInsets.only(left: 20, right: 20),
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    GridView.count(
                      crossAxisCount: 4,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      shrinkWrap: true,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              'assets/danapoly.png',
                              width: 50,
                              height: 50,
                            ),
                            Text("play")
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/deals.png',
                              width: 50,
                              height: 50,
                            ),
                            Text("game")
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/pulsa.png',
                              width: 50,
                              height: 50,
                            ),
                            Text("digital")
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/a+.png',
                              width: 50,
                              height: 50,
                            ),
                            Text("langganan")
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/lazada.png',
                              width: 50,
                              height: 50,
                            ),
                            Text("boy")
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/playstore.png',
                              width: 50,
                              height: 50,
                            ),
                            Text("boy")
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/reksa.png',
                              width: 50,
                              height: 50,
                            ),
                            Text("Reksa Dana")
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/lainya.png',
                              height: 50,
                              width: 50,
                            ),
                            Text("Lihat lainya")
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Menubottom(0),
      ),
    );
  }
}
