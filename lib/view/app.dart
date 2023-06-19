import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tictactoe/controller/game_controller.dart';
import 'package:tictactoe/view/game_view/game_view.dart';
import 'package:tictactoe/view/init_view/init_view.dart';
import 'package:tictactoe/view/start_game_view/start_gane_view.dart';
import 'package:tictactoe/view/undefined_view/undefined_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<GameController>(
      create: (context) => GameController(),
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          brightness: Brightness.dark,
        ),
        // home: InitView(),
        initialRoute: GameView.name,
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
            case StartGameView.name:
              return MaterialPageRoute(
                builder: (context) => StartGameView(),
              );
            default:
              return MaterialPageRoute(
                builder: (context) => UndefinedView(),
              );
          }
        },
      ),
    );
  }
}
