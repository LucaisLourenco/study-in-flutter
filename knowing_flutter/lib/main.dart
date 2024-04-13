import 'package:knowing_flutter/models/cachorro.dart';
import 'package:knowing_flutter/models/gato.dart';

void main() {
  var cachorroUm = new Cachorro('Marley', 9, 'Labrador');
  var cachorroDois = new Cachorro('Focus', 6, 'Labrador');
  var gato = new Gato('Jovino', 5, 'indefinido');

  cachorroUm.cruzar(cachorroDois);
}
