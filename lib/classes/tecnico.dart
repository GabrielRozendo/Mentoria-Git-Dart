import "pessoa.dart";
import "planejamentoT.dart";
import "atleta.dart";
import "texto.dart";

class Tecnico extends Pessoa {
  PlanejamentoTreino treino;

  Tecnico(String nome, int idade, double peso, String cpf, String assinatura,
      double salario)
      : super(nome, idade, peso, cpf, assinatura, salario);

  bool testarAtleta(int idade, double peso) {
    if (idade >= 18 && peso > 60) {
      return true;
    } else {
      return false;
    }
  }

  void condicaoAtleta(Atleta atleta) {
    print(Texto.condicaoA(atleta.nome, atleta.peso));
  }

  void planejarTreino(String instrucoes, DateTime data) {
    PlanejamentoTreino treino =
        PlanejamentoTreino(instrucoes, data, this.assinar());
    this.treino = treino;
  }
}
