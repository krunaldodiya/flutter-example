import 'package:bloc/bloc.dart';
import 'package:examaple/blocs/otp/event.dart';
import 'package:examaple/blocs/otp/state.dart';
import 'package:examaple/blocs/user/bloc.dart';

class OtpBloc extends Bloc<OtpEvent, OtpState> {
  UserBloc userBloc = UserBloc();

  void verifyOtp(mobile, otp) {
    dispatch(VerifyOtp(mobile: mobile, otp: otp));
  }

  @override
  OtpState get initialState => OtpState.initial();

  @override
  Stream<OtpState> mapEventToState(
    OtpEvent event,
  ) async* {
    if (event is VerifyOtp) {
      // lets assume sending http request
      // http.post("example.com", {mobile: event.mobile, otp: event.otp});
      // we get response below

      final Map response = {
        "token": "secret_token",
        "user": {"id": 1, "name": "john doe"}
      };

      userBloc.setAuth(response['token'], response['user']);
    }
  }
}
