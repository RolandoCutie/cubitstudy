// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cubit_study/data/network_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:cubit_study/const/strings.dart';
import 'package:cubit_study/data/repository.dart';
import 'package:cubit_study/presentation/screens/add_todo_screen.dart';
import 'package:cubit_study/presentation/screens/edit_todos_screen.dart';
import 'package:cubit_study/presentation/screens/todos_Screen.dart';

import '../cubit/cubit/todos_cubit.dart';

class AppRouter {
  Repository repository = Repository(NetWorkService());

  

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => TodosCubit(repository),
                  child: const TodosScreen(),
                ));
      case EDIT_TODO_ROUTE:
        return MaterialPageRoute(builder: (_) => const EditTodosScreen());
      case ADD_TODO_ROUTE:
        return MaterialPageRoute(builder: (_) => const AddTodosScreen());

      default:
        return null;
    }
  }
}
