abstract class Animal {
  void alimentar(String nome);
}

mixin Cauda {
  void abanarCauda() {
    print('abanando a cauda...');
  }
}
