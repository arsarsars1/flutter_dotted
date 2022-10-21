import 'package:flutter/material.dart';
import 'package:flutter_dotted/flutter_dotted.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dotted',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Dotted'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 300,
                width: 100,
                child: FlutterDotted(
                  child: Center(child: Text("Child")),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              SizedBox(
                height: 40,
                width: 40,
                child: FlutterDotted(),
              ),
              SizedBox(
                height: 80,
              ),
              SizedBox(
                height: 40,
                width: 200,
                child: FlutterDotted(),
              ),
              SizedBox(
                height: 80,
              ),
              SizedBox(
                height: 30,
                width: 200,
                child: FlutterDotted(),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
