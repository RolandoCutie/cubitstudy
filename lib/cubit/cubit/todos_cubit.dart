import 'package:bloc/bloc.dart';
import 'package:cubit_study/data/models/todo.dart';
import 'package:cubit_study/data/repository.dart';
import 'package:meta/meta.dart';

part 'todos_state.dart';

class TodosCubit extends Cubit<TodosState> {
  final Repository repository;

  TodosCubit(this.repository) : super(TodosInitial());

  void fetchTodos() {
    repository.fetchTodos().then((todos) => {emit(TodosLoaded(todos))});
  }
}
