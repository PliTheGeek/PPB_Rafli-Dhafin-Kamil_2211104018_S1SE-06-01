import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Rekomendasi Wisata '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return buildCustomScrollView(context, widget.title);
  }

  Widget _buildTouristAttraction(
      BuildContext context, String imagePath, String name, String description) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Image.asset(imagePath)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              name,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              description,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget buildCustomScrollView(BuildContext context, String title) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(title),
              background: Image.asset(
                'assets/baturaden.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                _buildTouristAttraction(
                  context,
                  'assets/baturaden.jpeg',
                  'Baturaden',
                  'Baturaden is a popular tourist destination known for its beautiful natural scenery and cool climate.',
                ),
                _buildTouristAttraction(
                  context,
                  'assets/curug_jenggala.jpeg',
                  'Curug Jenggala',
                  'Curug Jenggala is a stunning waterfall located in the Banyumas region, perfect for nature lovers.',
                ),
                _buildTouristAttraction(
                  context,
                  'assets/pancuran_pitu.jpeg',
                  'Pancuran Pitu',
                  'Pancuran Pitu is a hot spring with seven water spouts, offering a unique and relaxing experience.',
                ),
                _buildTouristAttraction(
                  context,
                  'assets/curug_gede.jpg',
                  'Curug Gede',
                  'Curug Gede is another beautiful waterfall in Banyumas, known for its impressive height and serene surroundings.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
