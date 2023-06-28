import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home : MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String level = 'Beginner (Student) ';
  int age = 13;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: const Text(
          'ID Card',
          style: TextStyle(color: Colors.white,fontSize: 30),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
          setState(() {
            age+=1;
          });
        },
        label: const Text('Age++'),
        icon: const Icon(Icons.add),
        backgroundColor: Colors.grey[800],
        
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/ad.png'),
                radius: 42.0,
              ),
            ),
            Divider(
              height: 70.0,
              color: Colors.grey[700],
            ),
            const Text(
              'NAME: ',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white60,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 7.0),
            Text(
              'Adhayan ',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.amber[200],
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Current Level in Life: ',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white60,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 7.0),
            Text(
              '$level',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.amber[200],
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'AGE: ',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white60,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 7.0),
            Text(
              '$age',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.amber[200],
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 8.0),
                Text(
                  'adhayan.purely@useless.com',
                  style: TextStyle(color: Colors.grey[400],fontSize: 20,letterSpacing: 1.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );

  }
}



