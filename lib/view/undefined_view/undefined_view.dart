import 'package:flutter/material.dart';

class UndefinedView extends StatelessWidget {
  static const name = 'UndefinedView';

  const UndefinedView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          '404 not found',
        ),
      ),
    );
  }
}
