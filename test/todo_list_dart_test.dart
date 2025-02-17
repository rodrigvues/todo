import 'package:test/test.dart';
import 'package:todo_list_dart/gerenciador_tarefas.dart';
import 'package:todo_list_dart/modelos/tarefa.dart';

void main() {
  group('GerenciadorTarefas 🚀', () {
    late GerenciadorTarefas gerenciador;

    setUp(() {
      // Cria uma nova instância antes de cada teste
      gerenciador = GerenciadorTarefas();
    });

    test('Deve iniciar com a lista vazia 📭', () {
      expect(gerenciador.tarefas, isEmpty);
    });

    test('Adiciona tarefa corretamente ✅', () {
      gerenciador.adicionarTarefa('Estudar Dart');
      expect(gerenciador.tarefas.length, equals(1));
      expect(gerenciador.tarefas[0].titulo, equals('Estudar Dart'));
      expect(gerenciador.tarefas[0].concluida, isFalse);
    });

    test('Conclui tarefa corretamente 🎯', () {
      gerenciador.adicionarTarefa('Estudar Flutter');
      gerenciador.concluirTarefa(0);
      expect(gerenciador.tarefas[0].concluida, isTrue);
    });

    test('Não conclui tarefa com índice inválido ❗', () {
      gerenciador.adicionarTarefa('Revisar testes');
      // Ao tentar concluir com um índice inválido, o método deve tratar sem lançar exceção
      expect(() => gerenciador.concluirTarefa(5), returnsNormally);
      // A tarefa deve continuar pendente
      expect(gerenciador.tarefas[0].concluida, isFalse);
    });

    test('Remove tarefa corretamente 🗑️', () {
      gerenciador.adicionarTarefa('Comprar leite');
      gerenciador.adicionarTarefa('Comprar pão');
      expect(gerenciador.tarefas.length, equals(2));
      gerenciador.removerTarefa(0);
      expect(gerenciador.tarefas.length, equals(1));
      expect(gerenciador.tarefas[0].titulo, equals('Comprar pão'));
    });

    test('Não remove tarefa com índice inválido 🚫', () {
      gerenciador.adicionarTarefa('Fazer exercícios');
      expect(() => gerenciador.removerTarefa(3), returnsNormally);
      expect(gerenciador.tarefas.length, equals(1));
    });
  });
}
