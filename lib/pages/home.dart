import 'package:chatter_flutter/pages/post_detail.dart';
import 'package:chatter_flutter/post_service.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});
  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PostService postService = PostService();
  List data = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        FutureBuilder<List>(
            future: postService.getAllPosts(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: snapshot.data?.length,
                  itemBuilder: (context, i) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, PostDetail.routeName,
                              arguments: {
                                'id': snapshot.data![i].id,
                                'title': snapshot.data![i].title,
                                'body': snapshot.data![i].body,
                                'image': snapshot.data![i].image,
                                'published': snapshot.data![i].published,
                              });
                        },
                        child: Card(
                          child: ListTile(
                            title: Text(
                              snapshot.data![i].title,
                              style: const TextStyle(fontSize: 30.0),
                            ),
                          ),
                        ));
                  },
                );
              } else {
                return const Center(
                  child: Text('No Data Found'),
                );
              }
            }),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          postService.getAllPosts().then((posts) {
            // Call fetchPosts function and update the data variable
            setState(() {
              data = posts;
            });
          }).catchError((error) {
            print(error);
          });
        },
        tooltip: 'Fetch data',
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
