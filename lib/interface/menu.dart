import 'dart:io';
import 'package:todo_list_dart/servicos/gerenciador_tarefas.dart';

class Menu {
  final GerenciadorTarefas gerenciador;

  Menu(this.gerenciador);

  void exibirMenu() {
    while (true) {
      print("\n1 - Adicionar Tarefa");
      print("2 - Listar Tarefas");
      print("3 - Concluir Tarefa");
      print("4 - Remover Tarefa");
      print("5 - Sair");
      stdout.write("Opção: ");
      String? opcao = stdin.readLineSync();

      switch (opcao) {
        case '1':
          stdout.write("Digite o nome da tarefa: ");
          String? titulo = stdin.readLineSync();
          if (titulo != null && titulo.isNotEmpty) {
            gerenciador.adicionarTarefa(titulo);
          }
          break;
        case '2':
          gerenciador.listarTarefas();
          break;
        case '3':
          stdout.write("Digite o número da tarefa para concluir: ");
          int? index = int.tryParse(stdin.readLineSync() ?? '');
          if (index != null) {
            gerenciador.concluirTarefa(index - 1);
          }
          break;
        case '4':
          stdout.write("Digite o número da tarefa para remover: ");
          int? index = int.tryParse(stdin.readLineSync() ?? '');
          if (index != null) {
            gerenciador.removerTarefa(index - 1);
          }
          break;
        case '5':
          print("Saindo...");
          return;
        default:
          print("Opção inválida.");
      }
    }
  }
}
