import 'package:flutter/material.dart';

class InitView extends StatelessWidget {
  static const name = 'InitView';

  const InitView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
