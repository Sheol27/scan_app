import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    // TODO: implement mapEventToState

    if (event is LoggingIn) {
      yield Loading();
    }
    if (event is LoggingOut) {
      yield Loading();
    }
    if (event is SuccessfullLoggedIn) {
      yield LoggedIn();
    }
    if (event is SuccessfullLoggedOut) {
      yield LoggedOut();
    }
  }
}
