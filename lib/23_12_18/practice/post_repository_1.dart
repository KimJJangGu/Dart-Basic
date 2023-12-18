// PostRepository 의 두가지 구현체를 작성하고 테스트
// 메모리에 저장: MockPostMemoryRepositoryImpl파일에 저장 : PostFileRepositoryImpl
// setUp(), tearDown() 과 같이 초기화를 위한 부분은 수정 가능

// 게시물 저장소
import 'package:untitled/23_12_18/post.dart';

abstract interface class PostRepository {
  Future<List<Post>> getPosts();

  Future<void> addPost(Post post);

  Future<void> deletePost(Post post);

  Future<void> updatePost(Post post);
}