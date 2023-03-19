import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children:[
          Row(
      children: [
        Expanded(
            flex: 1,
            child: Column(
              children: [
                Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.grey,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.orange,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.blue,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.pink,
                              ),
                            ),
                          ]),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(children: [
                            Expanded(
                                flex: 3,
                                child: Container(color: Colors.lightBlue)),
                            Expanded(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        color: Colors.green,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        color: Colors.yellow,
                                      ),
                                    ),
                                  ],
                                ))
                          ]),
                        )
                      ],
                    )),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Stack(
                    children: [
                      Container(
                        color: Colors.yellow,
                      ),
                      
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                  ),
                )
              ],
            )),
        Expanded(
            flex: 3,
            child: Stack(
              children: [
                Container(
                  color: Colors.pink,
                ),
                Positioned(
                    right: 100,
                    top: 0,
                    bottom: 0,
                    child: Container(
                      width: 10,
                      color: Colors.white,
                    ))
              ],
            )),
      ],
    ),
    Positioned(
                          top: MediaQuery.of(context).size.height / 2 + 50,
                          left: 50,
                          child: Container(
                              width: 100, height: 100, color: Colors.black.withAlpha(180)))
        ]));
  }
}
