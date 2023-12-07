void main() {
  Book book1 = Book(title: '코딩', publishDate: DateTime(2023, 12, 07), comment: '다트');
  Book book2 = Book(title: '코딩', publishDate: DateTime(2023, 12, 07), comment: '패드');

  Book book3 = Book(title: '코딩', publishDate: DateTime(2003, 12, 07), comment: '패드');
  Book book4 = Book(title: '코딩', publishDate: DateTime(2013, 12, 07), comment: '패드');

  // 제목과 출간일이 같으면 같은 책으로 판단, 또한 Set 에 넣으면 동일 객체로 판단
  print(book1 == book2);

  print('-----------------------------------------------');

  final Set<Book> books = {book1, book2};

  print(books);

  print('-----------------------------------------------');

  // Book 인스턴스를 담고 있는 컬렉션에 대해 sort() 를 수행하여 출간일이 오래된 순서대로 정렬
  final List<Book> books1 = [book3, book4];
  books1.sort((a, b) => a.compareTo(b));

  print(books1);

  print('-----------------------------------------------');

  // deep copy 를 지원
  final book5 = book1.copyWith(comment: '하이');
  print(book1 == book5);
  print(book1);
  print(book5);

  print('-----------------------------------------------');
}

class Book {
  String title;
  DateTime publishDate = DateTime.now();
  String comment;

  Book({
    required this.title,
    required this.publishDate,
    required this.comment,
  });

  // 제목과 출간일이 같으면 같은 책으로 판단, 또한 Set 에 넣으면 동일 객체로 판단
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          publishDate == other.publishDate;

  @override
  int get hashCode => title.hashCode ^ publishDate.hashCode;

  int compareTo(Book other) {
    return publishDate.compareTo(other.publishDate);
  }

  @override
  String toString() {
    return 'Book{title: $title, publishDate: $publishDate, comment: $comment}';
  }

  // deep copy 를 지원
  Book copyWith({
    String? title,
    DateTime? publishDate,
    String? comment,
  }) {
    return Book(
      title: title ?? this.title,
      publishDate: publishDate ?? this.publishDate,
      comment: comment ?? this.comment,
    );
  }
}
