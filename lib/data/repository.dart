import 'package:cubit_study/data/network_services.dart';

import 'models/todo.dart';

class Repository {
  final NetWorkService netWorkService;

  Repository(this.netWorkService);

  //assk network to get todos
  Future<List<Todo>> fetchTodos() async {
    final todosRaw = await netWorkService.fetchTodos();

    return todosRaw.map((e) => Todo.fromJson(e)).toList();
  }
}
