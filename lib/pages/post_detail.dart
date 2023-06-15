import 'package:flutter/material.dart';

class PostDetail extends StatefulWidget {
  const PostDetail({super.key});
  static const routeName = '/postDetail';
  final String title = 'post detail';

  @override
  State<PostDetail> createState() => _PostDetailState();
}

class _PostDetailState extends State<PostDetail> {
  late Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    final parameters = ModalRoute.of(context)!.settings.arguments;
    data = parameters as Map<String, dynamic>;

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(data['title']),
          Text(data['body']),
          Image.asset(data['image'])
        ]));
  }
}
