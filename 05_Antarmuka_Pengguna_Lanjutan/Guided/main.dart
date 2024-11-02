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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'ListView'),
              Tab(text: 'Separated'),
              Tab(text: 'Flexible/Expanded'),
              Tab(text: 'Custom Scroll'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ListViewExample(),
            ListViewSeparatedExample(),
            FlexibleExpandedExample(),
            CustomScrollViewExample(),
          ],
        ),
      ),
    );
  }
}

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          height: 50,
          color: index % 2 == 0 ? Colors.blue : Colors.green,
          child: Center(child: Text('Item $index')),
        );
      },
    );
  }
}

class ListViewSeparatedExample extends StatelessWidget {
  const ListViewSeparatedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          height: 50,
          color: index % 2 == 0 ? Colors.red : Colors.yellow,
          child: Center(child: Text('Item $index')),
        );
      },
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}

class FlexibleExpandedExample extends StatelessWidget {
  const FlexibleExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 1,
          child: Container(
            color: Colors.purple,
            child: const Center(child: Text('Flexible 1')),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.orange,
            child: const Center(child: Text('Expanded 2')),
          ),
        ),
      ],
    );
  }
}

class CustomScrollViewExample extends StatelessWidget {
  const CustomScrollViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Custom Scroll View'),
          ),
          expandedHeight: 200,
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => Container(
              height: 50,
              color: index % 2 == 0 ? Colors.teal : Colors.cyan,
              child: Center(child: Text('Item $index')),
            ),
            childCount: 10,
          ),
        ),
      ],
    );
  }
}
