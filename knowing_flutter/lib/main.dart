import 'package:knowing_flutter/models/cachorro.dart';

void main() {
  var cachorro = new Cachorro('Marley', 9, 'Labrador');

  cachorro.alimentar(cachorro.getNome);
  cachorro.amamentar(cachorro.getNome);
  cachorro.abanarCauda();
}
