part of 'authentication_bloc.dart';

abstract class AuthenticationState extends Equatable {
  AuthenticationState();
}

class AuthenticationInitial extends AuthenticationState {
  @override
  List<Object> get props => [];
}

class AuthenticationSuccess extends AuthenticationState {
  final User user;

  AuthenticationSuccess({this.user});

  @override
  List<Object> get props => [user];

  @override
  String toString() => 'AuthenticationSuccess welcome : ${user.name}';
}

class AuthenticationFailure extends AuthenticationState {}

class AuthenticationInProgress extends AuthenticationState {}
