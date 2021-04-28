import 'package:news_app/models/Article.dart';

class AddClip {
  final Article article;
  AddClip(this.article);
}

class DeleteClip {
  final Article article;
  DeleteClip(this.article);
}

/// 画面から渡ってきたIndex値に変更させるActionクラス
/// 画面からパラメータを受け取るにはメンバ変数を宣言してコンストラクタで初期化させればOK
class ChangeNaviIndexAction {
  final int index;
  ChangeNaviIndexAction({this.index});
}
