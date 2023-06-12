import 'package:chatter_flutter/pages/post_detail.dart';
import 'package:flutter/material.dart';
import 'package:chatter_flutter/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Chatter App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Home(title: 'Chatter App'),
        routes: {
          PostDetail.routeName: (context) => PostDetail(title: 'Post detail'),
        });
  }
}
