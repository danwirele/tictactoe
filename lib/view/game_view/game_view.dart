import 'package:flutter/material.dart';
import 'package:tictactoe/model/entities/board.dart';

class GameView extends StatelessWidget {
  static const name = 'GameView';
  const GameView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                const Spacer(),
                AspectRatio(
                  aspectRatio: 1 / 1,
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1.1,
                    ),
                    children: [
                      FieldContainer(
                        field: Field.tick(),
                      ),
                      FieldContainer(
                        field: Field.tick(),
                      ),
                      FieldContainer(
                        field: Field.toe(),
                      ),
                      FieldContainer(
                        field: Field.tick(),
                      ),
                      FieldContainer(
                        field: Field.toe(),
                      ),
                      FieldContainer(
                        field: Field.toe(),
                      ),
                      FieldContainer(
                        field: Field.tick(),
                      ),
                      FieldContainer(
                        field: Field.tick(),
                      ),
                      FieldContainer(
                        field: Field.toe(),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class FieldContainer extends StatelessWidget {
  Field field;
  FieldContainer({
    required this.field,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return field.map(
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
          child: FittedBox(
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
          child: FittedBox(
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
    );
  }
}
