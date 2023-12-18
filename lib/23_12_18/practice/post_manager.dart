import 'package:untitled/23_12_18/post.dart';
import 'package:untitled/23_12_18/practice/post_repository_1.dart';

class PostManager {
  final PostRepository _postRepository;

  PostManager(this._postRepository);

  Future<void> addPost(Post post) async {
    await _postRepository.addPost(post);
  }

  Future<void> deletePost(Post post) async {
    await _postRepository.deletePost(post);
  }

  Future<void> updatePost(Post post) async {
    await _postRepository.updatePost(post);
  }

  Future<List<Post>> getPosts() async {
    return await _postRepository.getPosts();
  }
}