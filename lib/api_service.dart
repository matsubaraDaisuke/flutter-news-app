import 'package:dio/dio.dart';
import 'package:news_app/models/Article.dart';

import 'config.dart';

class APIService {
  Future<List<Article>> getArticles() async {
    List<Article> data = new List<Article>.empty();
    print('call API: getArticles');
    print(Config.headlineURL);
    try {
      var response = await Dio().get(Config.headlineURL);

      if (response.statusCode == 200) {
        data = (response.data['articles'] as List)
            .map((i) => Article.fromJson(i))
            .toList();
      }
      // else {
      //   print(response.statusCode.toString());
      //   throw Exception(
      //       'Failed Load Data with status code ${response.statusCode}');
      // }
    } on DioError catch (e) {
      if (e.response.statusCode == 404) {
        print(e.response.statusCode);
        //return null;
        throw Exception("Connection  Timeout Exception");
      }
      print(e.message);
      //throw Exception("Connection  Timeout Exception");
    } catch (e) {
      //throw e;
      throw Exception("Connection  Timeout Exception");
    }

    //print(data);

    return data;
  }
}
