import 'package:knowing_flutter/models/animal.dart';

abstract class Mamifero implements Animal {
  @override
  void alimentar() {
    print('Alimentado...');
  }

  @override
  void cruzar(dynamic animal) {
    if (this.runtimeType == animal.runtimeType) {
      print('Um novo membro deve surgir.');
    } else {
      print('Não é possível cruzar animais de espécies diferentes.');
    }
  }

  void amamentar();
}
