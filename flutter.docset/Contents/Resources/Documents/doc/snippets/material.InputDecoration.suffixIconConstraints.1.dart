import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: 'Normal Icon Constraints',
              suffixIcon: Icon(Icons.search),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              isDense: true,
              hintText: 'Smaller Icon Constraints',
              suffixIcon: Icon(Icons.search),
              suffixIconConstraints: BoxConstraints(
                minHeight: 32,
                minWidth: 32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
