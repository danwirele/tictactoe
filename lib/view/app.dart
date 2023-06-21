import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tictactoe/controller/game_controller.dart';
import 'package:tictactoe/core/services/services.dart';
import 'package:tictactoe/view/game_view/game_view.dart';
import 'package:tictactoe/view/init_view/init_view.dart';
import 'package:tictactoe/view/start_game_view/start_gane_view.dart';
import 'package:tictactoe/view/undefined_view/undefined_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<GameController>(
      create: (context) => service<GameController>(),
      child: MaterialApp(
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
                builder: (context) => const InitView(),
              );
            case GameView.name:
              return MaterialPageRoute(
                builder: (context) => const GameView(),
              );
            case StartGameView.name:
              return MaterialPageRoute(
                builder: (context) => const StartGameView(),
              );
            default:
              return MaterialPageRoute(
                builder: (context) => const UndefinedView(),
              );
          }
        },
      ),
    );
  }
}
