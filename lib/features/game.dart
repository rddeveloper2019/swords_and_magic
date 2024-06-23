import 'dart:io';

/// Новая игра
void newGame() {
  print('Новая игра...');

  /// Имя главного героя
  print('Введите имя главного героя:');
  final name = stdin.readLineSync();

  /// Класс главного героя
  print('Введите название класса: ');
  final typeHero = stdin.readLineSync();
  print('$name Добро в мир Меча и Магии');
  print('Ваш класс $typeHero');
  print('Игра началась...');
}
