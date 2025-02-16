import 'package:todo_list_dart/interface/menu.dart';
import 'package:todo_list_dart/servicos/gerenciador_tarefas.dart';

void main() {
  GerenciadorTarefas gerenciador = GerenciadorTarefas();
  Menu menu = Menu(gerenciador);
  menu.exibirMenu();
}

