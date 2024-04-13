import 'package:knowing_flutter/models/animal.dart';
import 'package:knowing_flutter/models/mamifero.dart';

class Cachorro extends Mamifero with Cauda {
  int idade;
  String nome;
  String raca;

  Cachorro(this.nome, this.idade, this.raca);

  @override
  void amamentar(String nome) {
    print('$nome está amamentando...');
  }

  String get getNome => this.nome;

  int get getIdade => this.idade;

  String get getRaca => this.raca;
}
