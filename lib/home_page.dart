import 'package:flutter/material.dart';
import 'package:tictactoeflutterapp/tictactoestates.dart';
import 'package:tictactoeflutterapp/tictactoe_board.dart';

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
  late TicTacToeState game;
  late List<List<TicTacToePlayer>> board;

  // this method is called when the widget is first created
  @override
  void initState() {
    super.initState();
    startNewGame();
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
          child: tictactoeBoard(context,board)
        ))
    );
  }

  // sets up a new game by generating a new 2D list of tictactoeplayer
  // with 3 rows and 3 columns, each initialized to an empty string
  void startNewGame() {
    board =
        List.generate(3, (i) => List.generate(3, (j) => TicTacToePlayer.None));
    game = TicTacToeState(
        board: board, currentPlayer: TicTacToePlayer.O, message: "");
  }
}
