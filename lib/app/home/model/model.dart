class ModelClass{
  int userId;
  int id;
  String title;
  String body;

  ModelClass({required this.body,required this.id,required this.title,required this.userId});


factory ModelClass.factory.fromJson(Map<String, dynamic> json) => ModelClass(body: body, id: id, title: title, userId: userId,);


}