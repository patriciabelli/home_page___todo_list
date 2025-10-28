import 'package:home_page___todo_list/src/models/todo_model.dart';
import 'package:home_page___todo_list/src/repositories/todo_repository.dart';

class HomeController {
  List<TodoModel> todos = [];
  final repository = TodoRepository();

  Future start() async {
    todos = await repository.fetchTodos();
  }
}
