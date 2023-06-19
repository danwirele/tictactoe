import 'package:flutter/material.dart';

class StartGameView extends StatelessWidget {
  static const name = 'StartGameView';
  const StartGameView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Начать игру'),
        ),
      ),
    );
  }
}
