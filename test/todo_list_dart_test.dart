import 'package:test/test.dart';
import 'package:todo/todo_list.dart'; // Altere conforme o local correto da sua classe TodoList

void main() {
  group('TodoList', () {
    test('Deve iniciar com a lista vazia 🚀', () {
      final todoList = TodoList();
      expect(todoList.tasks, isEmpty);
    });

    test('Adiciona uma tarefa corretamente ✅', () {
      final todoList = TodoList();
      todoList.addTask('Comprar leite');
      expect(todoList.tasks, contains('Comprar leite'));
    });

    test('Remove uma tarefa corretamente ❌', () {
      final todoList = TodoList();
      todoList.addTask('Comprar pão');
      todoList.removeTask('Comprar pão');
      expect(todoList.tasks, isNot(contains('Comprar pão')));
    });

    test('Não remove tarefa inexistente 🔍', () {
      final todoList = TodoList();
      todoList.addTask('Fazer exercícios');
      // Tenta remover uma tarefa que não existe
      expect(() => todoList.removeTask('Ler livro'), returnsNormally);
      expect(todoList.tasks, hasLength(1));
    });
  });
}

