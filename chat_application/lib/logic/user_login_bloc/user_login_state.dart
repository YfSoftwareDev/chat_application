part of 'user_login_bloc.dart';

@immutable
abstract class UserLoginState extends Equatable {}

class UserLoginInitial extends UserLoginState {
  List<Object?> get props => throw UnimplementedError();
}

class LoadedUsersState extends UserLoginState {
  User user;

  LoadedUsersState({required this.user});

  List<Object?> get props => [user];
}

class CheckForUserState extends UserLoginState {
  String userConfirms;

  CheckForUserState({required this.userConfirms});

  List<Object?> get props => [this.userConfirms];
}

class LoadingUsers extends UserLoginState {
  List<Object?> get props => [];
}
