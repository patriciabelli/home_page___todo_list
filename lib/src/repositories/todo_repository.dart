import 'package:dio/dio.dart';
import 'package:home_page___todo_list/src/models/todo_model.dart';

class TodoRepository {
  late Dio dio;

  TodoRepository([Dio? dio]) : dio = dio ?? Dio();

  Future<List<TodoModel>> fetchTodos() async {
    final response = await dio.get('https://jsonplaceholder.typicode.com/todos');
    final list = response.data as List;
    return list.map((json) => TodoModel.fromJson(json)).toList();
  }
}

