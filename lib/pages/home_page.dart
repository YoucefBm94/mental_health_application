import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../util/emoji.dart';
import '../util/exercises_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      backgroundColor: Colors.blue[800],
      body: SafeArea(


        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Hi ,jared',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      const SizedBox(height: 10),
                      Text('21/09/2024',
                          style:
                              TextStyle(color: Colors.blue[200], fontSize: 10)),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 300,
              height: 50,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue[600],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Text('Search',
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'How are you feel ?',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Icon(Icons.more_horiz, color: Colors.white),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: [
                      EmoIconFace(emoji: '😔'),
                      SizedBox(height: 10),
                      Text('Badly',
                          style: TextStyle(color: Colors.white, fontSize: 15)),
                    ],
                  ),
                  Column(
                    children: [
                      EmoIconFace(emoji: '🙂'),
                      SizedBox(height: 10),
                      Text('Fine',
                          style: TextStyle(color: Colors.white, fontSize: 15)),
                    ],
                  ),
                  Column(
                    children: [
                      EmoIconFace(emoji: '😊'),
                      SizedBox(height: 10),
                      Text('Well',
                          style: TextStyle(color: Colors.white, fontSize: 15)),
                    ],
                  ),
                  Column(
                    children: [
                      EmoIconFace(emoji: '😄'),
                      SizedBox(height: 10),
                      Text('Excellent',
                          style: TextStyle(color: Colors.white, fontSize: 15)),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.grey[200],
                ),
                child: Column(
                  children: <Widget>[
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Exercises',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        Icon(Icons.more_horiz, color: Colors.black),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: ListView(
                        shrinkWrap: true,
                        children: const [
                          ExercisesTile(
                              title: 'Push up',
                              subtitle: '20 min',
                              icon: Icons.favorite),
                          SizedBox(height: 8),
                          ExercisesTile(
                            title: 'Pull up',
                            subtitle: '15 min',
                            icon: Icons.person,
                            backgroundColor: Colors.blue,
                          ),
                          SizedBox(height: 8),
                          ExercisesTile(
                              title: 'Squats',
                              subtitle: '10 min',
                              icon: Icons.favorite,
                              backgroundColor: Colors.greenAccent),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
