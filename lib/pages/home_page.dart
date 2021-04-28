import 'package:flutter/material.dart';
import 'package:news_app/api_service.dart';
import 'package:news_app/main.dart';
import 'package:news_app/models/Article.dart';
import 'package:news_app/pages/article_detail_page.dart';
import 'package:news_app/widgets/news_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  APIService apiService;
  Future<List<Article>> articles;

  @override
  void initState() {
    apiService = new APIService();
    articles = apiService.getArticles();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _aritclesList();
  }

  Widget _aritclesList() {
    return RefreshIndicator(
      onRefresh: _reloadAction,
      child: new FutureBuilder(
        future: articles,
        //future: apiService.getArticles(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> model) {
          print(model);
          if (!model.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (model.hasError) {
            //通信エラー時の処理
            print("hasError");
            showDialog(
                context: context,
                builder: (context) {
                  return SimpleDialog(
                    title: Text('title'),
                    children: <Widget>[
                      SimpleDialogOption(onPressed: () {}, child: Text('first'))
                    ],
                  );
                });
          }

          return _buildList(model.data);
        },
      ),
    );
  }

  Widget _buildList(List<Article> items) {
    return Center(
      child: ListView.builder(
        padding: EdgeInsets.only(top: 50.0),
        scrollDirection: Axis.vertical,
        itemCount: items.length,
        itemBuilder: (context, index) {
          var data = items[index];
          return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ArticleDetailPage(articleURL: data.url)));
              },
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    NewsCard(
                      title: data.title,
                      imageUrl: data.urlToImage,
                      author: data.author,
                    ),
                  ]));
        },
      ),
    );
  }

  Future<Null> _reloadAction() {
    //setState(() {});
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (a, b, c) => MyApp(),
        transitionDuration: Duration(seconds: 0),
      ),
    );
    return null;
  }
}
