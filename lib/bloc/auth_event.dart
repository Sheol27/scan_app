part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class LoggingIn extends AuthEvent {}

class LoggingOut extends AuthEvent {}

class SuccessfullLoggedOut extends AuthEvent {}

class SuccessfullLoggedIn extends AuthEvent {}
