import 'package:untitled/23_12_18/post.dart';
import 'package:untitled/23_12_18/practice/post_file_repository.dart';
import 'package:untitled/23_12_18/practice/post_manager.dart';
import 'package:untitled/23_12_18/practice/post_repository_1.dart';

void main() async {
  final PostRepository postRepository = PostFileRepository();
  final PostManager postManager = PostManager(postRepository);

  final List<Post> postList = await postManager.getPosts();
  print(postList);

  final postAdd = await postManager.addPost(post);
}