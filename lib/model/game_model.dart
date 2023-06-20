import 'package:tictactoe/model/entities/board.dart';

class GameModel {
  Field nextField = const Field.tick();
  int turnNum = 0;
  String? text = '';
  Map<Board, Field> card = {
    const Board.leftTop(): const Field.none(),
    const Board.centerTop(): const Field.none(),
    const Board.rightTop(): const Field.none(),
    const Board.leftMiddle(): const Field.none(),
    const Board.centerMiddle(): const Field.none(),
    const Board.rightMiddle(): const Field.none(),
    const Board.leftBottom(): const Field.none(),
    const Board.centerBottom(): const Field.none(),
    const Board.rightBottom(): const Field.none(),
  };

  void resetGame() {
    card.updateAll((key, value) => value = const Field.none());
    turnNum = 0;
    nextField = const Field.tick();
    text = '';
  }

  void putField(Board board) {
    if (card[board] == Field.none()) {
      card[board] = nextField.mapOrNull(
        tick: (_) => const Field.tick(),
        toe: (_) => const Field.toe(),
      )!;
      nextField = nextField.mapOrNull(
        tick: (_) => const Field.toe(),
        toe: (_) => const Field.tick(),
      )!;
      turnNum = turnNum + 1;
    }
  }

  Field? checkWiner() {
    const tick = Field.tick();
    const toe = Field.toe();
    // check all rows
    if (card[const Board.leftTop()] == tick &&
        card[const Board.centerTop()] == tick &&
        card[const Board.rightTop()] == tick) {
      return const Field.tick();
    }
    if (card[const Board.leftTop()] == toe &&
        card[const Board.centerTop()] == toe &&
        card[const Board.rightTop()] == toe) return const Field.toe();

    if (card[const Board.leftMiddle()] == tick &&
        card[const Board.centerMiddle()] == tick &&
        card[const Board.rightMiddle()] == tick) return const Field.tick();
    if (card[const Board.leftMiddle()] == toe &&
        card[const Board.centerMiddle()] == toe &&
        card[const Board.rightMiddle()] == toe) return const Field.toe();

    if (card[const Board.leftBottom()] == tick &&
        card[const Board.centerBottom()] == tick &&
        card[const Board.rightBottom()] == tick) return const Field.tick();
    if (card[const Board.leftBottom()] == toe &&
        card[const Board.centerBottom()] == toe &&
        card[const Board.rightBottom()] == toe) return const Field.toe();

    // check all columns
    if (card[const Board.leftTop()] == tick &&
        card[const Board.leftMiddle()] == tick &&
        card[const Board.leftBottom()] == tick) return const Field.tick();
    if (card[const Board.leftTop()] == toe &&
        card[const Board.leftMiddle()] == toe &&
        card[const Board.leftBottom()] == toe) return const Field.toe();

    if (card[const Board.centerTop()] == tick &&
        card[const Board.centerMiddle()] == tick &&
        card[const Board.centerBottom()] == tick) return const Field.tick();
    if (card[const Board.centerTop()] == toe &&
        card[const Board.centerMiddle()] == toe &&
        card[const Board.centerBottom()] == toe) return const Field.toe();

    if (card[const Board.rightTop()] == tick &&
        card[const Board.rightMiddle()] == tick &&
        card[const Board.rightBottom()] == tick) return const Field.tick();
    if (card[const Board.rightTop()] == toe &&
        card[const Board.rightMiddle()] == toe &&
        card[const Board.rightBottom()] == toe) return const Field.toe();

    //check all diags
    //check main diag
    if (card[const Board.leftTop()] == tick &&
        card[const Board.centerMiddle()] == tick &&
        card[const Board.rightBottom()] == tick) return const Field.tick();
    if (card[const Board.leftTop()] == toe &&
        card[const Board.centerMiddle()] == toe &&
        card[const Board.rightBottom()] == toe) return const Field.toe();
    //check indirect diag
    if (card[const Board.rightTop()] == tick &&
        card[const Board.centerMiddle()] == tick &&
        card[const Board.leftBottom()] == tick) return const Field.tick();
    if (card[const Board.rightTop()] == toe &&
        card[const Board.centerMiddle()] == toe &&
        card[const Board.leftBottom()] == toe) return const Field.toe();

    //check 9 turn
    if (turnNum == 9) return const Field.none();

    return null;
  }
}
