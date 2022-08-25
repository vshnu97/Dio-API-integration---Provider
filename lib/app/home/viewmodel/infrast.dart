import 'package:dio/dio.dart';
import 'package:fake_api/app/home/model/model.dart';
import 'package:flutter/cupertino.dart';

class HomeProv extends ChangeNotifier{

final url = 'https://jsonplaceholder.typicode.com/posts';
  getApi()async{
    Response response = await Dio().get(url);
    final jsonData = response.data;
    final result = ModelClass.fromJson(jsonData);
    return result;





  }
}