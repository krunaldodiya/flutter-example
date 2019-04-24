import 'package:examaple/app.dart';
import 'package:examaple/blocs/otp/bloc.dart';
import 'package:examaple/blocs/user/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    BlocProviderTree(
      blocProviders: [
        BlocProvider<OtpBloc>(bloc: OtpBloc()),
        BlocProvider<UserBloc>(bloc: UserBloc()),
      ],
      child: MyApp(),
    ),
  );
}
