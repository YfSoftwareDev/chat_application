
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';


import '../../model/user.dart';
import '../../repository/login_repository.dart';
part 'user_login_event.dart';
part 'user_login_state.dart';
class UserLoginBloc extends Bloc<UserLoginEvent, UserLoginState> {
    late LoginRepository loginRepository;

  UserLoginBloc() : super(UserLoginInitial()) {
  
    on<AddUserEvent>(_addUser);
    on<CheckForUserEvent>(_checkForUser);
  }



  void _addUser(AddUserEvent event, Emitter<UserLoginState> emit) {
    final state = this.state;
    loginRepository.sendUserToJson(event.user);
    emit(LoadedUsersState(user: event.user));
  }

  void _checkForUser(CheckForUserEvent event, Emitter<UserLoginState> emit) async {
    bool checkForUser = await loginRepository.checkForUser(event.user);
    print(checkForUser.toString());
    if (checkForUser) {
      emit(CheckForUserState(userConfirms: " welcome"));
    }
    emit(CheckForUserState(userConfirms: " not exists"));
  }

  }

