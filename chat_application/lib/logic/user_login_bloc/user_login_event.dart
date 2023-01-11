part of 'user_login_bloc.dart';

abstract class UserLoginEvent {}

class LoadedUsers extends UserLoginEvent {
  List<Object?> get props => [];
}

class AddUserEvent extends UserLoginEvent {
  late User user;

  AddUserEvent({required this.user});

  @override
  List<Object?> get props => [user];
}

class CheckForUserEvent extends UserLoginEvent{
   late User user;

  CheckForUserEvent({required this.user});
  
  @override
  // TODO: implement props
  List<Object?> get props => [user];
}
