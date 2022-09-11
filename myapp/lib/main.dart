import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List perfumeImages = [
    "pics/1.jpg",
    "pics/2.jpg",
    "pics/3.jpg",
    "pics/4.jpg",
    "pics/5.jpg"
  ];
  List perfumeName = [
    "FOUGER D'ARGENT",
    "NEROL PORTOFINO",
    "OUD WOOD",
    "LOST CHERRY",
    "JASMEN ROUGE"
  ];
  List perfumeEDP = [
    "edu de parfum",
    "edu de parfum",
    "edu de parfum",
    "edu de parfum",
    "edu de parfum"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            Center(
              child: Text(
                "TomFord",
                style: TextStyle(
                  fontSize: 40,color: Color.fromARGB(255, 0, 89, 127)
                ),
                textAlign: TextAlign.center,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: perfumeImages.length,
              itemBuilder: (BuildContext context, int i) {
                return Container(
                  color: Color.fromARGB(255, 233, 233, 233),
                  child: ListTile(
                    isThreeLine: true,
                    trailing: Icon(Icons.shopping_bag, color: Color.fromARGB(255, 5, 107, 161),),
                    title: Text(
                      "${perfumeName[i]}",
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: Text("${perfumeEDP[i]}"),
                    leading: Image(image: AssetImage("${perfumeImages[i]}")),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
