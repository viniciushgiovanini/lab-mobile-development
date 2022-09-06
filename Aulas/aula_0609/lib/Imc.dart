class Imc {
  final int peso;
  final int altura;

  Imc(this.peso, this.altura);

  calcularImc() {
    int rIMC = (this.peso / this.altura).round();
    return rIMC;
  }
}
