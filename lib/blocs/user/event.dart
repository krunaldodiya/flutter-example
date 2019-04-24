abstract class UserEvent {}

class SetAuth extends UserEvent {
  String token;
  Map user;

  SetAuth({this.token, this.user});
}
