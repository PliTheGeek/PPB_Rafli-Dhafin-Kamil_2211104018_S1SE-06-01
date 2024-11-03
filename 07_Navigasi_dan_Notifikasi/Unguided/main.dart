import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'album/album.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  @override
  void initState() {
    super.initState();
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    var initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    var initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);
    flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AlbumListPage(
          flutterLocalNotificationsPlugin: flutterLocalNotificationsPlugin),
    );
  }
}

class AlbumListPage extends StatelessWidget {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  AlbumListPage({required this.flutterLocalNotificationsPlugin});

  final List<Album> albums = [
    Album(userId: 1, id: 1, title: 'Album 1'),
    Album(userId: 2, id: 2, title: 'Album 2'),
    Album(userId: 3, id: 3, title: 'Album 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Albums'),
      ),
      body: ListView.builder(
        itemCount: albums.length,
        itemBuilder: (context, index) {
          final album = albums[index];
          return ListTile(
            title: Text(album.title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AlbumDetailPage(
                    album: album,
                    flutterLocalNotificationsPlugin:
                        flutterLocalNotificationsPlugin,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class AlbumDetailPage extends StatelessWidget {
  final Album album;
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  AlbumDetailPage(
      {required this.album, required this.flutterLocalNotificationsPlugin});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(album.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('User ID: ${album.userId}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Album ID: ${album.id}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Title: ${album.title}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _showNotification,
              child: Text('Show Notification'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showNotification() async {
    var androidPlatformChannelSpecifics = const AndroidNotificationDetails(
      '1',
      'Test',
      channelDescription: 'Hai',
      importance: Importance.max,
      priority: Priority.high,
      ticker: 'ticker',
    );
    var platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.show(
      0,
      'Hello',
      'This is a notification',
      platformChannelSpecifics,
      payload: 'item x',
    );
  }
}
