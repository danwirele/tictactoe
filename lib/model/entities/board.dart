// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';

part 'board.freezed.dart';

@freezed
abstract class Field with _$Field {
  const factory Field.none() = _None;
  const factory Field.tick() = _Tick;
  const factory Field.toe() = _Toe;
}

@freezed
abstract class Board with _$Board {
  const factory Board.leftTop() = _LeftTop;
  const factory Board.centerTop() = _CenterTop;
  const factory Board.rightTop() = _RightTop;
  const factory Board.leftMiddle() = _LeftMiddle;
  const factory Board.centerMiddle() = _CenterMiddle;
  const factory Board.rightMiddle() = _RightMiddle;
  const factory Board.leftBottom() = _LeftBottom;
  const factory Board.centerBottom() = _CenterBottom;
  const factory Board.rightBottom() = _RightBottom;
}
