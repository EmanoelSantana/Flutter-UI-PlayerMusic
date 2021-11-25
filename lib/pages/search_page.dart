// ignore_for_file: unnecessary_const, prefer_const_constructors

import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 15.0),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Center(
              child: Text(
                "Search",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 44.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 28.0,
                  ),
                  filled: true,
                  border: InputBorder.none,
                  hintText: "Find your music",
                ),
              ),
            ),
            Expanded(
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20.0),
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Pop Music",
                          style: TextStyle(color: Colors.white, fontSize: 28.0),
                        ),
                        color: Colors.deepPurple),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Rock",
                          style: TextStyle(color: Colors.white, fontSize: 28.0),
                        ),
                        color: Colors.deepOrange),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Hip-Hop",
                          style: TextStyle(color: Colors.white, fontSize: 28.0),
                        ),
                        color: Colors.amber),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Jazz",
                          style: TextStyle(color: Colors.white, fontSize: 28.0),
                        ),
                        color: Colors.blueAccent),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "House",
                          style: TextStyle(color: Colors.white, fontSize: 28.0),
                        ),
                        color: Colors.greenAccent),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Reggae",
                          style: TextStyle(color: Colors.white, fontSize: 28.0),
                        ),
                        color: Colors.redAccent),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
