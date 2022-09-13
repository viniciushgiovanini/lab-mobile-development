class imc {
  int peso = 0;
  int altura = 0;

  // Com construtor
  // imc(this.peso, this.altura);
  imc(peso1, altura1) {
    peso = peso1;
    altura = altura1;
  }

  calcularImc() {
    int rIMC = (peso / altura).round();
    return rIMC;
  }
}
