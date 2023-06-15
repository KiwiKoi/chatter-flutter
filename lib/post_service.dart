import 'dart:convert';
import 'package:http/http.dart' as http;

class PostService {
  String baseUrl = "http://localhost:4000/posts/";
  Future<List> getAllPosts() async {
    try {
      var response = await http.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        final List<dynamic> jsonList = json.decode(response.body);
        final List<Post> posts =
            jsonList.map((json) => Post.fromJson(json)).toList();
        print(posts);
        return posts;
      } else {
        return Future.error("Server Error");
      }
    } catch (e) {
      return Future.error(e);
    }
  }
}

class Post {
  final String id;
  final String title;
  final String image;
  final String body;
  final bool published;

  Post(
      {required this.id,
      required this.title,
      required this.body,
      this.image = '',
      this.published = false});

  factory Post.fromJson(json) => Post(
        id: json['id'],
        title: json['title'],
        body: json['body'],
        image: json['image'],
        published: json['published']);
}
