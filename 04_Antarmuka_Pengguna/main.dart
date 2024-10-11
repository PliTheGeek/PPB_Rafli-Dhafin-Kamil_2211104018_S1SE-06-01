import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tempat Wisata Banyumas Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Tempat Wisata Banyumas Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: menuItems.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.asset(menuItems[index].imagePath,
                  width: 50, height: 50),
              title: Text(menuItems[index].title),
              subtitle: Text(menuItems[index].description),
              onTap: () {
                // Handle menu item tap
                print('Tapped on ${menuItems[index].title}');
              },
            );
          },
        ),
      ),
    );
  }
}

class MenuItem {
  final String title;
  final String description;
  final String imagePath;

  MenuItem(
      {required this.title,
      required this.description,
      required this.imagePath});
}

final List<MenuItem> menuItems = [
  MenuItem(
    title: 'Bukit Tengtung',
    description: 'A beautiful hill with a great view.',
    imagePath: 'assets/images/bukit_tengtung.jpeg',
  ),
  MenuItem(
    title: 'Madilog',
    description: 'A historical site with rich cultural heritage.',
    imagePath: 'assets/images/madilog.jpeg',
  ),
  MenuItem(
    title: 'Gor Satria',
    description: 'A popular sports complex.',
    imagePath: 'assets/images/gor_satria.jpeg',
  ),
  MenuItem(
    title: 'Pantai Widuri',
    description: 'A serene beach with clear waters.',
    imagePath: 'assets/images/pantai_widuri.jpg',
  ),
];
