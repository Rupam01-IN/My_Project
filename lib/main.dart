import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  String datatochange = 're';
  void changedata() {
    setState(() {
      datatochange = 're';
    });
  }

  List<String> sargamnote = ['Sa-1', 'Re-1', 'Ga-1'];
  int sargameNumber = 0;

  List<String> englishNote = ['Sa-2', 'Re-2', 'Ga-2'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Aii'),
        ),
        body: ListView(
          children: [
            Row(
              children: [
                Container(
                  child: Center(child: Text(sargamnote[sargameNumber])),
                  height: 200,
                  width: 100,
                  color: Colors.amber,
                ),
                Container(
                  child: Center(child: Text(sargamnote[sargameNumber + 1])),
                  height: 200,
                  width: 100,
                  color: Colors.green,
                ),
                Container(
                  child: Center(child: Text(sargamnote[sargameNumber + 2])),
                  height: 200,
                  width: 100,
                  color: Colors.red,
                ),
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: changedata,
                  child: const Text('Hindi Note'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('English Note'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Eyat Click Krili text note hide hoi jabo'),
                )
              ],
            ),
          ],
        ));
  }
}
