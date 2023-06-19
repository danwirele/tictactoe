import 'package:freezed_annotation/freezed_annotation.dart';

part 'player.freezed.dart';

@freezed
abstract class Player with _$Player {
  const factory Player.tick() = _TickPlayer;
  const factory Player.toe() = _ToePlayer;
}
