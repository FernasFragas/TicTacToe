// States
enum TicTacToePlayer { X, O, None }

// Custom mapping of enum values to string values
class TicTacToePlayerEnumMap {
  static const Map<TicTacToePlayer, String> _map = {
    TicTacToePlayer.X: "X",
    TicTacToePlayer.O: "O",
    TicTacToePlayer.None: " ",
  };

  static String getValue(String value) {
    return _map[value] ?? '';
  }
}

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