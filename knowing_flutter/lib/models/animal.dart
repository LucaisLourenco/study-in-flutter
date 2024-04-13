abstract class Animal {
  void alimentar();
  void cruzar(dynamic animal);
}

mixin Cauda {
  void abanarCauda() {
    print('abanando a cauda...');
  }
}
