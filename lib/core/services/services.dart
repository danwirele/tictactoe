import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:tictactoe/controller/game_controller.dart';
import 'package:tictactoe/model/game_model.dart';

final service = GetIt.instance;

FutureOr<void> init() {
  service.registerLazySingleton<GameController>(() => GameController());
  service.registerLazySingleton(() => GameModel());
}
