import 'package:flutter/material.dart';
import 'package:tictactoe/core/services/services.dart';
import 'package:tictactoe/view/app.dart';

void main() async {
  await init();
  runApp(const App());
}
