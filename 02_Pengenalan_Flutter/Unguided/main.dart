import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App - Biodata',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Biodata'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Text(
              'Biodata : Budiono Siregar',
              style: TextStyle(fontSize: 24),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2, // 2 columns
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
                padding: EdgeInsets.all(8.0),
                children: <Widget>[
                  Container(
                    color: Colors.red,
                    padding: EdgeInsets.all(8.0),
                    child: CustomWidget1(),
                  ),
                  Container(
                    color: Colors.green,
                    padding: EdgeInsets.all(8.0),
                    child: CustomWidget2(),
                  ),
                  Container(
                    color: Colors.blue,
                    padding: EdgeInsets.all(8.0),
                    child: CustomWidget3(),
                  ),
                  Container(
                    color: Colors.yellow,
                    padding: EdgeInsets.all(8.0),
                    child: CustomWidget4(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Ini adalah custom widget 1 - Kapal Layar');
  }
}

class CustomWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Ini adalah custom widget 2 - Kapal Udara');
  }
}

class CustomWidget3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Ini adalah custom widget 3 - Kapal Lawd');
  }
}

class CustomWidget4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Ini adalah custom widget 4 - Kapal Api');
  }
}
