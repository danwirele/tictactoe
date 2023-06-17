class GameModel {
  List<List<int>> gameArea = [];
  late bool turn;
  //false - XPlayer; true - OPlayer
  bool? winer;

  GameModel({
    required this.turn,
  }) {
    _initGameArea();
  }

  void _initGameArea() {
    gameArea = List.generate(3, (index) => [0, 0, 0]);
  }

  void changeTurn() {
    turn = !turn;
  }

  void checkWinner() {
    //check all rows
    for (int i = 0; i < gameArea.length; i++) {
      int sum = gameArea[i][0] + gameArea[i][1] + gameArea[i][2];
      switch (sum) {
        case 3:
          winer = true;
          break;
        case -3:
          winer = false;
          break;
        default:
          break;
      }
    }

    //check all columns
    for (int i = 0; i < gameArea.length; i++) {
      int sum = gameArea[0][i] + gameArea[1][i] + gameArea[2][i];
      switch (sum) {
        case 3:
          winer = true;
          break;
        case -3:
          winer = false;
          break;
        default:
          break;
      }
    }

    //check diag
    int sumMainDiag = gameArea[0][0] + gameArea[1][1] + gameArea[2][2];
    switch (sumMainDiag) {
      case 3:
        winer = true;
        break;
      case -3:
        winer = false;
        break;
      default:
        break;
    }

    int sumIndirectDiag = gameArea[2][0] + gameArea[1][1] + gameArea[0][2];
    switch (sumIndirectDiag) {
      case 3:
        winer = true;
        break;
      case -3:
        winer = false;
        break;
      default:
        break;
    }
  }
}
