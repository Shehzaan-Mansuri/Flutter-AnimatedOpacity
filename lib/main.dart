import 'package:flutter/material.dart';

void main() {
  runApp(LogoFade());
}

class LogoFade extends StatefulWidget {
  const LogoFade({Key? key}) : super(key: key);

  @override
  State<LogoFade> createState() => LogoFadeState();
}

class LogoFadeState extends State<LogoFade> {
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedOpacity(
          opacity: opacityLevel,
          duration: const Duration(seconds: 3),
          child: const FlutterLogo(),
        ),
        ElevatedButton(
          child: const Text('Fade Logo'),
          onPressed: _changeOpacity,
        ),
      ],
    );
  }
}
