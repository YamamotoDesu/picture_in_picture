import 'package:flutter/material.dart';
import 'package:picture_in_picture/background_screen.dart';
import 'package:pip_view/pip_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return PIPView(
      builder: (context, isFloating) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Home Page'),
          ),
          body: Center(
            child: ElevatedButton(
              onPressed: () {
                PIPView.of(context)?.presentBelow(const BackgroundScreen());
              },
              child: const Text('Go to Second Page'),
            ),
          ),
        );
      },
    );
  }
}
