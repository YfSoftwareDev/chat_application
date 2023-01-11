import 'package:chat_application/presentation/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'constants/variables.dart';
import 'logic/user_login_bloc/user_login_bloc.dart';

void main() {
  runApp(BlocProvider<UserLoginBloc>(
    
    create: (context) => UserLoginBloc(),
    child: MaterialApp(
      onGenerateRoute:VariableConst.router.onGenerateRoute,
    ),
  ));
}
