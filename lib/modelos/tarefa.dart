class Tarefa {
  String titulo; // criando variavel para nome da tarefa
  bool concluida; // criando bool para status da tarefa

  Tarefa(this.titulo, {this.concluida = false}); // construtor 

  void marcarComoConcluida() { 
    concluida = true; // bool status
  }
}
