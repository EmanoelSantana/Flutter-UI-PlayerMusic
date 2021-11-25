// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:ui_spotify_clone/pages/home_page.dart';
import 'package:ui_spotify_clone/pages/playlist_page.dart';
import 'package:ui_spotify_clone/pages/search_page.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SpotifyApp(),
    ));

class SpotifyApp extends StatefulWidget {
  @override
  _SpotifyAppState createState() => _SpotifyAppState();
}

class _SpotifyAppState extends State<SpotifyApp> {
  int _currentIndex = 0;
  final Tabs = [
    HomePage(),
    SearchPage(),
    PlayListPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.shifting,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Color.fromARGB(255, 20, 20, 20),
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              title: Text(
                "Search",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Color.fromARGB(255, 20, 20, 20),
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.library_music,
                color: Colors.white,
              ),
              title: Text(
                "Playlist",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Color.fromARGB(255, 20, 20, 20),
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Color.fromARGB(255, 20, 20, 20),
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
