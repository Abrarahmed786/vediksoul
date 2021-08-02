import 'package:flutter/material.dart';
import 'package:vediksoul/widgets/gnav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vediksoul',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Gnav'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.transparent,
              child: Image.asset(
                'images/geeta.png',
                height: 50,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.favorite_outline,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                ),
              ],
            )
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: Gnav(),
    );
  }
}
