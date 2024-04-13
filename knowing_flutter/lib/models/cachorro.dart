import 'package:knowing_flutter/models/animal.dart';
import 'package:knowing_flutter/models/mamifero.dart';

class Cachorro extends Mamifero with Cauda {

  @override
  void amamentar() {
    print('Cachorro amamentando...');
  }
}
