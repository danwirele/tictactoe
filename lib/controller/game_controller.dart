import 'package:flutter/material.dart';
import 'package:tictactoe/model/entities/board.dart';
import 'package:tictactoe/model/game_model.dart';

class GameController with ChangeNotifier {
  GameModel gameModel = GameModel();
  void resetGame() {
    gameModel.resetGame();
    notifyListeners();
  }

  void putField(Board board) {
    gameModel.putField(board);
    final winer = gameModel.checkWiner();
    notifyListeners();
  }

  Field getBoard(Board board) {
    return gameModel.card[board]!;
  }
}
