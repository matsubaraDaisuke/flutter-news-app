import 'package:flutter_dotenv/flutter_dotenv.dart';

class Config {
  // API URLs
  static String url = "https://newsapi.org/v2/";
  static String headlineURL =
      url + "top-headlines?country=jp&apiKey=" + env['API_KEY'];
}
