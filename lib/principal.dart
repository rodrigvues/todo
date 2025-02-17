import 'package:todo_list_dart/interface/menu.dart';
import 'package:todo_list_dart/servicos/gerenciador_tarefas.dart';

void main() {
  GerenciadorTarefas gerenciador = GerenciadorTarefas(); // chamando o gerenciador de tarefa
  Menu menu = Menu(gerenciador); // chamando o menu
  menu.exibirMenu(); //inicializando menu
}

