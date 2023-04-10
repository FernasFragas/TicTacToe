import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tictactoeflutterapp/tictactoestates.dart';

Widget tictactoeBoard(BuildContext context, List<List<TicTacToePlayer>> board) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      for (int i = 0; i < 3; i++)
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (int j = 0; j < 3; j++)
              buildActionBoard(board, i, j)
          ],
        ),
    ],
  );
}

Widget buildActionBoard(List<List<TicTacToePlayer>> board, int positionX, positionY) {
  // GestureDetector detects when a cell is tapped,
  // and it updates the state of the game board accordingly.
  return GestureDetector(
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
          TicTacToePlayerEnumMap.getValue(board[positionX][positionY].name),
          style: const TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
