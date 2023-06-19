import 'package:tictactoe/model/entities/board.dart';
import 'package:tictactoe/model/entities/player.dart';

class GameModel {
  Board board = Board.empty();
  // final Player toePlayer = const Player.toe();
  // final Player tickPlayer = const Player.tick();
  GameModel();

  void putField(Player player) {
    player.map(tick: tick, toe: toe)
  }
}
