import 'package:knowing_flutter/models/animal.dart';

abstract class Mamifero implements Animal {
  @override
  void alimentar() {
    print('Alimentado...');
  }

  void amamentar();
}
