class Post {
  Post({
    this.posts,
  });
  List<Value>? posts;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        posts: List<Value>.from(json['posts'].map((x) => Value.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'posts': List<dynamic>.from(posts!.map((x) => x.toJson())),
      };
}

class Value {
  Value({
    this.title,
    this.date,
    this.content,
  });
  String? title;
  String? date;
  String? content;

  factory Value.fromJson(Map<String, dynamic> json) => Value(
        title: json['title'],
        date: json['date'],
        content: json['content'],
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'date': date,
        'content': content,
      };
}
