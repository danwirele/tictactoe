// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';

part 'board.freezed.dart';

@freezed
abstract class Field with _$Field {
  const factory Field.none() = _None;
  const factory Field.tick() = _Tick;
  const factory Field.toe() = _Toe;
}

class Board {
  final Field leftTop;
  final Field centerTop;
  final Field rightTop;
  final Field leftMiddle;
  final Field centerMiddle;
  final Field rightMiddle;
  final Field leftBottom;
  final Field centerBottom;
  final Field rightBottom;

  Board({
    required this.leftMiddle,
    required this.centerMiddle,
    required this.rightMiddle,
    required this.leftBottom,
    required this.centerBottom,
    required this.rightBottom,
    required this.leftTop,
    required this.centerTop,
    required this.rightTop,
  });

  factory Board.empty() => Board(
        leftTop: const Field.none(),
        centerTop: const Field.none(),
        rightTop: const Field.none(),
        centerBottom: const Field.none(),
        centerMiddle: const Field.none(),
        leftBottom: const Field.none(),
        leftMiddle: const Field.none(),
        rightBottom: const Field.none(),
        rightMiddle: const Field.none(),
      );

  Board copyWith({
    Field? leftTop,
    Field? centerTop,
    Field? rightTop,
    Field? centerBottom,
    Field? centerMiddle,
    Field? leftBottom,
    Field? leftMiddle,
    Field? rightBottom,
    Field? rightMiddle,
  }) {
    return Board(
      leftTop: leftTop ?? this.leftTop,
      centerTop: centerTop ?? this.centerTop,
      rightTop: rightTop ?? this.rightTop,
      centerBottom: centerBottom ?? this.centerBottom,
      centerMiddle: centerMiddle ?? this.centerMiddle,
      leftBottom: leftBottom ?? this.leftBottom,
      leftMiddle: leftMiddle ?? this.leftMiddle,
      rightBottom: rightBottom ?? this.rightBottom,
      rightMiddle: rightMiddle ?? this.rightMiddle,
    );
  }

  @override
  bool operator ==(covariant Board other) {
    if (identical(this, other)) return true;

    return other.leftTop == leftTop &&
        other.centerTop == centerTop &&
        other.rightTop == rightTop &&
        other.centerBottom == centerBottom &&
        other.centerMiddle == centerMiddle &&
        other.leftBottom == leftBottom &&
        other.leftMiddle == leftMiddle &&
        other.rightBottom == rightBottom &&
        other.rightMiddle == rightMiddle;
  }

  @override
  int get hashCode =>
      leftTop.hashCode ^
      centerTop.hashCode ^
      rightTop.hashCode ^
      centerBottom.hashCode ^
      centerMiddle.hashCode ^
      leftBottom.hashCode ^
      leftMiddle.hashCode ^
      rightBottom.hashCode ^
      rightMiddle.hashCode;
}
