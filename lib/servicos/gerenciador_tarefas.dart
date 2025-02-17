import 'package:todo_list_dart/modelos/tarefa.dart';

class GerenciadorTarefas {
  List<Tarefa> tarefas = []; // criando lista

  void adicionarTarefa(String titulo) { // metodo adicionar 
    tarefas.add(Tarefa(titulo));
    print("Tarefa adicionada: $titulo");
  }

  void listarTarefas() { // metodo listar
    if (tarefas.isEmpty) {
      print("Lista de Tarefas Vazia.");
      return;
    }
    print("\nLista de Tarefas:");
    for (int i = 0; i < tarefas.length; i++) {
      String status = tarefas[i].concluida ? "Concluída" : "Pendente";
      print("${i + 1} - ${tarefas[i].titulo} : $status");
    }
  }

  void concluirTarefa(int index) { // metodo concluir
    if (index >= 0 && index < tarefas.length) {
      tarefas[index].marcarComoConcluida();
      print("Tarefa concluída: ${tarefas[index].titulo}");
    } else {
      print("Índice inválido.");
    }
  }

  void removerTarefa(int index) { // metodo remover
    if (index >= 0 && index < tarefas.length) {
      print("Tarefa removida: ${tarefas[index].titulo}");
      tarefas.removeAt(index);
    } else {
      print("Índice inválido.");
    }
  }
}
