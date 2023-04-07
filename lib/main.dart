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
      home: const MyHomePage(title: 'Tic Tac Toe Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// _MyHomePageState is a stateful widget which means it can hold data that changes over time.
class _MyHomePageState extends State<MyHomePage> {
  // holds the current state of the Tic Tac Toe game board
  // Each element in the list corresponds to a cell on the board
  late List<List<String>> board;

  // this method is called when the widget is first created
  @override
  void initState() {
    super.initState();
    startNewGame();
  }

  // sets up a new game by generating a new 2D list of strings
  // with 3 rows and 3 columns, each initialized to an empty string
  void startNewGame() {
    board = List.generate(3, (_) => List.filled(3, ''));
  }

  // This method is called to build the user interface of the app.
  // It creates a Container widget that contains the Tic Tac Toe board,
  // with each cell represented by a GestureDetector widget.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tic Tac Toe"),
        ),
        body: Center(
            child: Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < 3; i++)
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int j = 0; j < 3; j++)
                      // GestureDetector detects when a cell is tapped,
                      // and it updates the state of the game board accordingly.
                      GestureDetector(
                        //onTap: () => ,
                        child: Container(
                          width: 70.0,
                          height: 70.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 2.0,
                            ),
                          ),
                          child: Center(
                            // Text widget in each cell displays the X or O symbol
                            // that corresponds to the current state of the game board.
                            child: Text(
                              board[i][j],
                              style: const TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
            ],
          ),
        )));
  }
}
