import 'package:examaple/blocs/otp/bloc.dart';
import 'package:examaple/blocs/user/bloc.dart';
import 'package:examaple/blocs/user/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  OtpBloc otpBloc;
  UserBloc userBloc;

  @override
  void initState() {
    super.initState();

    otpBloc = BlocProvider.of<OtpBloc>(context);
    userBloc = BlocProvider.of<UserBloc>(context);

    // this is not working
    otpBloc.verifyOtp("9426726815", 1234);

    // this is working
    userBloc.setAuth("secret_token", {
      "id": 2,
      "name": "harry potter",
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example App"),
      ),
      body: BlocBuilder(
        bloc: userBloc,
        builder: (BuildContext context, UserState state) {
          if (state.user == null) {
            return Center(child: CircularProgressIndicator());
          }

          return Text("hello ${state.user['name']}");
        },
      ),
    );
  }
}
