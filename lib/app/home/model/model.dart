class ModelClass {
  int userId;
  int id;
  String title;
  String body;

  ModelClass(
      {required this.body,
      required this.id,
      required this.title,
      required this.userId});

  factory ModelClass.fromJson(Map<String, dynamic> json) => ModelClass(
        body: json["body"],
        id: json["id"],
        title: json["title"],
        userId: json["userId"],
      );
  Map<String, dynamic> toJson() =>
      {"userId": userId, "title": title, "id": id, "body": body};
}
