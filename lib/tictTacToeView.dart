import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoeflutterapp/ticTacToeBolc.dart';
import 'package:tictactoeflutterapp/ticTacToeEvent.dart';
import 'package:tictactoeflutterapp/ticTacToeState.dart';

class TicTacToeView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TicTacToeViewState();
}

class _TicTacToeViewState extends State<TicTacToeView> {
  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TicTacToe"),
        ),
        body: BlocBuilder<TicTacToeBloc, TicTacToeState>(
          builder: (context, state) {
            return Column(
              children: [
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  children: List.generate(9, (index) {
                    return GridTile(
                      child: Card(
                          child: ElevatedButton(
                            onPressed: () {
                              return BlocProvider.of<TicTacToeBloc>(context)
                                  .add(ClickEvent(index));
                            },
                            child: Text(state.board[index]),
                          )),
                    );
                  }),
                ),
              ],
            );
          },
        ));
  }
}