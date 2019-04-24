abstract class OtpEvent {}

class VerifyOtp extends OtpEvent {
  String mobile;
  int otp;

  VerifyOtp({this.mobile, this.otp});
}
