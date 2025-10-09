
import 'package:flutter_test/flutter_test.dart';
import 'package:home_page___todo_list/src/repositories/todo_repository.dart';

void main() {
  final repository = TodoRepository();
  
 test('Deve trazer uma lista de TodoModel', () async {
   final list = await repository.fetchTodos();
   expect(list[1].title, 'quis ut nam facilis et officia qui');
 }); 
}