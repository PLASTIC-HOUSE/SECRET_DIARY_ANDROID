class Post {
  Post({
    this.name,
    this.posts,
  });
  String? name;
  List<Value>? posts;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        name: json['name'],
        posts: List<Value>.from(json['posts'].map((x) => Value.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'name': name,
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
