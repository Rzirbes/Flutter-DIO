class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome, this.peso, this.altura);
}

double calcularIMC(double peso, double altura) {
  if (peso <= 0 || altura <= 0) {
    throw Exception("Peso e altura devem ser maiores que zero.");
  }
  return peso / (altura * altura);
}

String obterResultadoIMC(double imc) {
  if (imc < 16) {
    return "Magreza grave";
  } else if (imc < 17) {
    return "Magreza moderada";
  } else if (imc < 18.5) {
    return "Magreza leve";
  } else if (imc < 25) {
    return "Saudável";
  } else if (imc < 30) {
    return "Sobrepeso";
  } else if (imc < 35) {
    return "Obesidade grau I";
  } else if (imc < 40) {
    return "Obesidade grau II (severa)";
  } else {
    return "Obesidade grau III (mórbida)";
  }
}

