class TicTacToeLogicFunc {
  var board = List.filled(9, "");
  String value = "";
  _square() {
    String _initialValue = value;
    _initialValue == "X" ? value = "O" : value = "X";
    return value;
  }

  _checkresult(str) {

  }
}