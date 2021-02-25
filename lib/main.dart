import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scan_app/bloc/auth_bloc.dart';
import 'package:scan_app/screen/homepage.dart';
import 'package:scan_app/screen/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.indigo,
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(
                  backgroundColor: Colors.indigo),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Wrapper(),
      ),
    );
  }
}

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is AuthInitial) {
          return LogInPage();
        }

        if (state is LoggedIn) {
          return HomepageScreen();
        }
        if (state is LoggedOut) {
          return LogInPage();
        }
        if (state is SuccessfullLoggedIn) {
          return HomepageScreen();
        }
        if (state is SuccessfullLoggedOut) {
          return LogInPage();
        }
        if (state is Loading) {
          return Container();
        }

        return SizedBox();
      },
    );
  }
}
