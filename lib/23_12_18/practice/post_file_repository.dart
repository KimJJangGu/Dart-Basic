import 'dart:convert';
import 'dart:io';
import 'package:untitled/23_12_18/post.dart';
import 'package:untitled/23_12_18/practice/post_repository_1.dart';

class PostFileRepository implements PostRepository {
  @override
  Future<void> addPost(Post post) async {
    final File postFile = File('posts.txt');

    //final File writeAsString = await postFile.writeAsString('dd');
    await postFile.
  }

  @override
  Future<void> deletePost(Post post) async {}

  @override
  Future<List<Post>> getPosts() async {
    final File postFile = File('posts.txt');

    try {
      final String readString = await postFile.readAsString();
      final List<dynamic> jsonList = jsonDecode(readString) as List<dynamic>;
      return jsonList.map((e) => Post.fromJson(e)).toList();
    } catch (e) {
      print('에러');
      return List.empty();
    }
  }

  @override
  Future<void> updatePost(Post post) async {}
}
