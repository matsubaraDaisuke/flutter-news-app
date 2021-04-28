import 'package:news_app/store/actions/user.dart';
import 'package:news_app/store/store.dart';

RootState rootReducer(RootState state, action) {
  // RootStateのパラメータを利用して全てのStateクラスを初期化する
  return RootState(
    //navigation: navigationReducer(state.navigation, action),
    clip: userReducer(state.clip, action),
  );
}

UserState userReducer(UserState state, action) {
  if (action is AddClip) {
    //
    state = state.clip.add(action.article);
  } else if (action is DeleteClip) {
    //
  }

  return state;
}

NavigationState navigationReducer(NavigationState state, action) {
  if (action is ChangeNaviIndexAction) {
    return NavigationState(index: action.index);
  }
  // 上記意外（例外の場合）
  return state;
}

// RootState rootReducer(RootState state, action) {
//   return RootState(counter: counterReducer(state.counter, action));
// }

// CounterState counterReducer(CounterState state, action) {
//   if (action is IncrementAction) {
//     return CounterState(count: state.count + action.count);
//   } else {
//     return state;
//   }
// }

// class CounterState {
//   final int count;

//   CounterState({this.count = 0});
// }

// class RootState {
//   final CounterState counter;

//   RootState({this.counter});
// }

// class IncrementAction {
//   final int count;

//   IncrementAction(this.count);
// }
