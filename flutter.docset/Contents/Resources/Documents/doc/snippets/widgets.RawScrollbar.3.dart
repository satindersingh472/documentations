import 'package:flutter/material.dart';

void main() => runApp(const ScrollbarApp());

class ScrollbarApp extends StatelessWidget {
  const ScrollbarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Scrollbar Sample')),
        body: const Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Row(
        children: <Widget>[
          SizedBox(
              width: constraints.maxWidth / 2,
              // When running this sample on desktop, two scrollbars will be
              // visible here. One is the default scrollbar and the other is the
              // Scrollbar widget with custom thickness.
              child: Scrollbar(
                thickness: 20.0,
                thumbVisibility: true,
                controller: controller,
                child: ListView.builder(
                  controller: controller,
                  itemCount: 100,
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Scrollable 1 : Index $index'),
                      ),
                    );
                  },
                ),
              )),
          SizedBox(
              width: constraints.maxWidth / 2,
              // When running this sample on desktop, one scrollbar will be
              // visible here. The default scrollbar is hidden by setting the
              // ScrollConfiguration's scrollbars to false. The Scrollbar widget
              // with custom thickness is visible.
              child: Scrollbar(
                thickness: 20.0,
                thumbVisibility: true,
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context)
                      .copyWith(scrollbars: false),
                  child: ListView.builder(
                    primary: true,
                    itemCount: 100,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Scrollable 2 : Index $index'),
                        ),
                      );
                    },
                  ),
                ),
              )),
        ],
      );
    });
  }
}
