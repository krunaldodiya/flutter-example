import 'package:meta/meta.dart';

@immutable
class OtpState {
  final bool loading;
  final bool loaded;
  final Map error;
  final String mobile;
  final int otp;

  OtpState({
    @required this.loading,
    @required this.loaded,
    @required this.error,
    @required this.mobile,
    @required this.otp,
  });

  factory OtpState.initial() {
    return OtpState(
      loading: false,
      loaded: false,
      error: null,
      mobile: null,
      otp: null,
    );
  }

  OtpState copyWith({
    bool loading,
    bool loaded,
    Map error,
    String mobile,
    int otp,
  }) {
    return OtpState(
      loading: loading ?? this.loading,
      loaded: loaded ?? this.loaded,
      error: error ?? this.error,
      mobile: mobile ?? this.mobile,
      otp: otp ?? this.otp,
    );
  }
}
