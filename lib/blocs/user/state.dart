import 'package:meta/meta.dart';

@immutable
class UserState {
  final bool loading;
  final bool loaded;
  final Map error;
  final Map user;

  UserState({
    @required this.loading,
    @required this.loaded,
    @required this.error,
    @required this.user,
  });

  factory UserState.initial() {
    return UserState(
      loading: false,
      loaded: false,
      error: null,
      user: null,
    );
  }

  UserState copyWith({
    bool loading,
    bool loaded,
    Map error,
    Map user,
  }) {
    return UserState(
      loading: loading ?? this.loading,
      loaded: loaded ?? this.loaded,
      error: error ?? this.error,
      user: user ?? this.user,
    );
  }
}
