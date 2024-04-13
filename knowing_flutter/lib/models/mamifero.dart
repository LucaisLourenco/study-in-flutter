import 'package:knowing_flutter/models/animal.dart';

abstract class Mamifero implements Animal {
  @override
  void alimentar(String nome) {
    print('$nome está se alimentado...');
  }

  void amamentar(String nome);
}
