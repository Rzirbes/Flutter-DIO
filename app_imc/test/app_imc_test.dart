// import 'package:app_imc/app_imc.dart';
// import 'package:test/test.dart';

import 'package:app_imc/app_imc.dart';
import 'package:test/test.dart';

void main() {
 group('Testes de cálculo de IMC', () {
    test('Teste de cálculo de IMC com valores válidos', () {
      expect(calcularIMC(70.0, 1.75), closeTo(22.86, 0.01));
    });

    test('Teste de cálculo de IMC com peso zero', () {
      expect(() => calcularIMC(0, 1.75), throwsA(isA<Exception>()));
    });

    test('Teste de cálculo de IMC com altura zero', () {
      expect(() => calcularIMC(70.0, 0), throwsA(isA<Exception>()));
    });

    test('Teste de classificação de IMC', () {
      expect(obterResultadoIMC(16.0), equals('Magreza moderada'));
      expect(obterResultadoIMC(17.5), equals('Magreza leve'));
      expect(obterResultadoIMC(18.0), equals('Magreza leve'));
      expect(obterResultadoIMC(24.0), equals('Saudável'));
      expect(obterResultadoIMC(28.0), equals('Sobrepeso'));
      expect(obterResultadoIMC(33.0), equals('Obesidade grau I'));
      expect(obterResultadoIMC(38.0), equals('Obesidade grau II (severa)'));
      expect(obterResultadoIMC(42.0), equals('Obesidade grau III (mórbida)'));
    });

    
  });
}
