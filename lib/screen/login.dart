import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scan_app/bloc/auth_bloc.dart';

class LogInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('LogIn'),
            FloatingActionButton.extended(
              label: Text('Log in'),
              onPressed: () {
                BlocProvider.of<AuthBloc>(context)
                    .add(SuccessfullLoggedIn());
              },
            )
          ],
        ),
      ),
    );
  }
}
