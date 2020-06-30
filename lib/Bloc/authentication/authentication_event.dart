part of 'authentication_bloc.dart';

abstract class AuthenticationEvent extends Equatable {
  AuthenticationEvent();
}

class AuthenticationStarted extends AuthenticationEvent {}

class AuthenticationLoggedIn extends AuthenticationEvent {
  AuthenticationLoggedIn();

  @override
  List<Object> get props => [];

  @override
  String toString() => 'AuthenticationLoggedIn';
}

class AuthenticationLoggedOut extends AuthenticationEvent {}
