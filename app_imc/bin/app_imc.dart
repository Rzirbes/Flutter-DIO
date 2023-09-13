import 'dart:io';
import 'package:app_imc/app_imc.dart';

void main() {
  try {
    stdout.write("Digite o nome da pessoa: ");
    final nome = stdin.readLineSync()!;
    stdout.write("Digite o peso (em kg): ");
    final peso = double.parse(stdin.readLineSync()!);
    stdout.write("Digite a altura (em metros): ");
    final altura = double.parse(stdin.readLineSync()!);

    final pessoa = Pessoa(nome, peso, altura);

    final imc = calcularIMC(pessoa.peso, pessoa.altura);
    final resultado = obterResultadoIMC(imc);

    print("Resultado para ${pessoa.nome}:");
    print("IMC: $imc");
    print("Classificação: $resultado");
  } catch (e) {
    print("Erro: $e");
  }
}
