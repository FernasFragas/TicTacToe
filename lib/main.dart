import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home_page.dart';

void main() {
  {
    // ensures that the Flutter framework is fully initialized before running the application.
    WidgetsFlutterBinding.ensureInitialized();
    //sets the preferred screen orientation to portrait-up, which means the application will only be displayed in portrait mode
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
        .then((_) {
      runApp(const MyApp());
    });
  }
}

class MyApp extends StatelessWidget {
  final Key? key;

  const MyApp({this.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic Tac Toe',
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
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(key: key, title: 'Tic Tac Toe Home Page'),
    );
  }
}
