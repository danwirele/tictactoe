import 'package:tictactoe/model/game_model.dart';

abstract class PlayerModel {
  void putSymbol({
    required int i,
    required int j,
    required GameModel gameModel,
  }) {}
}

//XPlayer is -1 player
class XPlayerModel implements PlayerModel {
  @override
  void putSymbol({
    required int i,
    required int j,
    required gameModel,
  }) {
    // TODO: implement putSymbol
    if (gameModel.gameArea[i][j] == 0) {
      gameModel.gameArea[i][j] = -1;
    }
  }
}

//OPlayer is true player
class OPlayerModel implements PlayerModel {
  @override
  void putSymbol({
    required int i,
    required int j,
    required gameModel,
  }) {
    // TODO: implement putSymbol
    if (gameModel.gameArea[i][j] == 0) {
      gameModel.gameArea[i][j] = 1;
    }
  }
}
