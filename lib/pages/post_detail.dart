import 'dart:convert';
import 'package:chatter_flutter/post_service.dart';
import 'package:flutter/material.dart';

class PostDetail extends StatefulWidget {
  const PostDetail({super.key, required this.title});
  static const routeName = '/postDetail';
  final String title;

  @override
  State<PostDetail> createState() => _PostDetailState();
}

class _PostDetailState extends State<PostDetail> {
  var data;
  Object? parameters;

  @override
  Widget build(BuildContext context) {
    final parameters = ModalRoute.of(context)!.settings.arguments;
    print(parameters);

    Map data = jsonDecode(jsonEncode(parameters));

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(data.titre)]));
  }
}
