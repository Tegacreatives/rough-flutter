// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import './util/emoticon_face.dart';
import './util/exercise_tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    );
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First App'),
      ),
      body: Center(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.amber),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const Screen2();
                    },
                  ),
                );
              },
              child: const Text('Screen 2'),
            ),
          ],
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Project Screen'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset('images/ill.png'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const Screen3();
                      },
                    ),
                  );
                },
                child: const Text('Screen 3'),
              ),
            ],
          )),
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[800],
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Saved'),
        ]),
        body: SafeArea(
          child: Column(
            children: [
              //greeting row
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hi, Tega!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              '13 April 2023',
                              style: TextStyle(
                                color: Colors.blue[200],
                              ),
                            )
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.all(12),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),

                    SizedBox(
                      height: 25,
                    ),

                    //Search bar
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Search',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 25,
                    ),

                    //how do you feel
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'How do you feel?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 25,
                    ),

                    //faces

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //bad
                        Column(
                          children: [
                            EmoticonFace(
                              emoticonFace: '😔',
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Bad',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        //fine
                        Column(
                          children: [
                            EmoticonFace(
                              emoticonFace: '🙂',
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Fine',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        //well
                        Column(
                          children: [
                            EmoticonFace(
                              emoticonFace: '😁',
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Well',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        //exellent
                        Column(
                          children: [
                            EmoticonFace(
                              emoticonFace: '😃',
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Exellecent',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 25,
              ),

              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  child: Container(
                    padding: EdgeInsets.all(25),
                    color: Colors.grey[300],
                    child: Center(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Exercises',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Icon(Icons.more_horiz)
                            ],
                          ),

                          SizedBox(
                            height: 20,
                          ),

                          //Listview
                          Expanded(
                            child: ListView(
                              children: [
                                ExerciseTile(
                                  icon: Icons.favorite,
                                  exerciseName: 'Speaking Skills',
                                  numberOfExercises: 16,
                                  color: Colors.orange,
                                ),
                                ExerciseTile(
                                  icon: Icons.person,
                                  exerciseName: 'Reading Skills',
                                  numberOfExercises: 8,
                                  color: Colors.blue,
                                ),
                                ExerciseTile(
                                  icon: Icons.star,
                                  exerciseName: 'Hearing Skills',
                                  numberOfExercises: 16,
                                  color: Colors.pink,
                                ),
                                ExerciseTile(
                                  icon: Icons.ads_click,
                                  exerciseName: 'Writing Skills',
                                  numberOfExercises: 16,
                                  color: Colors.green,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
