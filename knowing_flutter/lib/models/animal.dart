abstract class Animal {
  void alimentar();
}

mixin Cauda {
  void abanarCauda() {
    print('abanando a cauda...');
  }
}
