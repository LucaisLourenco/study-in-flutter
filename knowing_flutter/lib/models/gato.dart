import 'package:knowing_flutter/models/animal.dart';
import 'package:knowing_flutter/models/mamifero.dart';

class Gato extends Mamifero with Cauda {
  int idade;
  String nome;
  String raca;

  Gato(this.nome, this.idade, this.raca);

  @override
  void amamentar() {
    print('Gato amamentando...');
  }

  String get getNome => this.nome;

  int get getIdade => this.idade;

  String get getRaca => this.raca;
}
