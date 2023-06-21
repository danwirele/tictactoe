import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tictactoe/controller/game_controller.dart';
import 'package:tictactoe/model/entities/board.dart';

class GameView extends StatelessWidget {
  static const name = 'GameView';
  const GameView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<GameController>(context);

    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              controller.gameModel.text ?? '',
              style: const TextStyle(
                fontSize: 32,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                const Spacer(),
                AspectRatio(
                  aspectRatio: 1 / 1,
                  child: AnimatedBuilder(
                    animation: controller,
                    builder: (_, __) {
                      final keys = controller.gameModel.card.keys;
                      return GridView(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 1.1,
                        ),
                        children: keys.map(
                          (Board board) {
                            final Field field =
                                controller.gameModel.card[board]!;
                            void onTapFieldContainer() {
                              if (controller.gameModel.turnNum < 9)
                                controller.putField(board);
                            }

                            return FieldContainer(
                                field: field, onTap: onTapFieldContainer);
                          },
                        ).toList(),
                      );
                    },
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () => controller.resetGame(),
            child: const Text('Restart'),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class FieldContainer extends StatelessWidget {
  final Field field;

  final Function() onTap;

  const FieldContainer({
    required this.field,
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: field.map(
        none: (_) => AspectRatio(
          aspectRatio: 1 / 1,
          child: Container(
            color: Colors.white,
          ),
        ),
        tick: (_) => AspectRatio(
          aspectRatio: 1 / 1,
          child: Container(
            color: Colors.white,
            child: const FittedBox(
              alignment: Alignment.center,
              fit: BoxFit.contain,
              child: Icon(
                Icons.circle_outlined,
                weight: 0.01,
                color: Colors.black,
              ),
            ),
          ),
        ),
        toe: (_) => AspectRatio(
          aspectRatio: 1 / 1,
          child: Container(
            color: Colors.white,
            child: const FittedBox(
              alignment: Alignment.center,
              fit: BoxFit.contain,
              child: Icon(
                Icons.close,
                weight: 0.01,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
