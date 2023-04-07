// Events
abstract class TicTacToeEvent {}

class TicTacToeMoveEvent extends TicTacToeEvent {
  final int row;
  final int col;

  TicTacToeMoveEvent({required this.row, required this.col});
}

class TicTacToeRestartEvent extends TicTacToeEvent {}
