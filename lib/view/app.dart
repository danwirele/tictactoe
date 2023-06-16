import 'package:flutter/material.dart';
import 'package:tictactoe/view/game_view/game_view.dart';
import 'package:tictactoe/view/init_view/init_view.dart';
import 'package:tictactoe/view/undefined_view/undefined_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      // home: InitView(),
      initialRoute: InitView.name,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case InitView.name:
            return MaterialPageRoute(
              builder: (context) => InitView(),
            );
          case GameView.name:
            return MaterialPageRoute(
              builder: (context) => GameView(),
            );
          default:
            return MaterialPageRoute(
              builder: (context) => UndefinedView(),
            );
        }
      },
    );
  }
}
