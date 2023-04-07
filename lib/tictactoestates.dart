// States
enum TicTacToePlayer { X, O, None }

class TicTacToeState {
  final List<List<TicTacToePlayer>> board;
  final TicTacToePlayer currentPlayer;
  final String message;

  TicTacToeState(
      {
        required this.board,
        required this.currentPlayer,
        required this.message
      });
}