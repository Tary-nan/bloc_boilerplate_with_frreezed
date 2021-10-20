import 'package:architecture_bloc/src/features/scroll_infinity/models/post_model/post.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

abstract class ServiceAPI {
  Future<List<Post>> browse([int startIndex]);
}

const _postLimit = 20;

class PostService implements ServiceAPI {
  var client = http.Client();
   
  @override
  Future<List<Post>> browse([int startIndex = 0]) async {
    try {
      var response = await client.get(
        Uri.https(
          'jsonplaceholder.typicode.com',
          '/posts',
          <String, String>{'_start': '$startIndex', '_limit': '$_postLimit'},
        ),
      );
        final body = json.decode(response.body) as List;
        final posts = body.map((post) => Post.fromJson(post)).toList();
        return posts;
    } catch (error){
      throw Exception(error);
    }
  }
}
