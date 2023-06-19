import 'package:tictactoe/model/entities/board.dart';

sealed class Player {
  final Board board;
  final 
}

class TicPlayer implements Player {}

class ToePlayer implements Player {}
