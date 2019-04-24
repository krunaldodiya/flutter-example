import 'package:bloc/bloc.dart';
import 'package:examaple/blocs/user/event.dart';
import 'package:examaple/blocs/user/state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  void setAuth(token, user) {
    dispatch(SetAuth(token: token, user: user));
  }

  @override
  UserState get initialState => UserState.initial();

  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    if (event is SetAuth) {
      // setting event.token using SharedPreferences

      print(event.user); // both events are being fired
      yield currentState.copyWith(user: event.user);
    }
  }
}
