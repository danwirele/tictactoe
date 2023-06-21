import 'package:flutter/material.dart';
import 'package:tictactoe/view/game_view/game_view.dart';

class InitView extends StatelessWidget {
  static const name = 'InitView';

  const InitView({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 1),
      () => Navigator.of(context).pushNamed(GameView.name),
    );
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
