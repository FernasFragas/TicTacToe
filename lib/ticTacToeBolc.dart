import 'package:tictactoeflutterapp/ticTacToeEvent.dart';
import 'package:tictactoeflutterapp/ticTacToeState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TicTacToeBloc extends Bloc<TicTacToeEvent, TicTacToeState>{
  TicTacToeBloc() : super(TicTacToeState(board: List.filled(9, ""))) {
    on<ClickEvent>((event, emit) {
      if (state.board[event.index] == "") {

      }
    });
  }
}