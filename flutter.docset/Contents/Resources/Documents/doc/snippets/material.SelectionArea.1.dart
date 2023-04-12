import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: SelectionArea(
        child: Scaffold(
          appBar: AppBar(title: const Text(_title)),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text('Row 1'),
                Text('Row 2'),
                Text('Row 3'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
