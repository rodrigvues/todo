class Tarefa {
  String titulo;
  bool concluida;

  Tarefa(this.titulo, {this.concluida = false});

  void marcarComoConcluida() {
    concluida = true;
  }
}
