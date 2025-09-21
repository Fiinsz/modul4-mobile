import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const MusicPlayerScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MusicPlayerScreen extends StatelessWidget {
  const MusicPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'Pemutar Musik',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        color: Colors.black54,
        child: Row(
          children: [
            Expanded(
              child: IconButton(
                icon: const Icon(Icons.shuffle, color: Colors.white),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: IconButton(
                icon: const Icon(Icons.skip_previous, color: Colors.white),
                onPressed: () {},
              ),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: IconButton(
                iconSize: 48,
                icon: const Icon(Icons.play_circle_fill, color: Colors.white),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: IconButton(
                icon: const Icon(Icons.skip_next, color: Colors.white),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: IconButton(
                icon: const Icon(Icons.repeat, color: Colors.white),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
