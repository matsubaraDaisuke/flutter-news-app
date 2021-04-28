import 'package:flutter/material.dart';
import 'package:news_app/models/Article.dart';

@immutable
class RootState {
  // 全てのStateクラスをメンバ変数として保持し、コンストラクタで
  // 初期化します
  //final NavigationState navigation;
  final UserState clip;
  RootState({this.clip});
}

/// Navigationステート
@immutable
class NavigationState {
  final int index;
  NavigationState({this.index = 0});
}

@immutable
class UserState {
  final List<Article> clip;
  UserState({this.clip = const []});
}

// userがわの処理
//
// ストア（ストアの管理はこれ一つだけにする）
// final store = Store<RootState>(
//   rootReducer,
//   initialState: RootState( // 初期化
//     navigation: NavigationState(),
//   ),
// );
// ...
//
//  NavigationWidget構成
//    return StoreProvider(
//      store: store,
//      ...
//
//
//store.dispatch(ChangeNaviIndexAction(index: index));
