import 'dart:io';

void main(List<String> arguments) {
  /// Меню
  showMenu();

  print('Введите необходимый пункт: ');
  // Приводим строку к типу int
  final int menu = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;
  if (checkEnter(menu)) {
    print('Вы ввели не правильный пункт меню!');
  } else if (menu == 1) {
    newGame();
  } else if (menu == 2) {
    loadGame();
  } else if (menu == 3) {
    exitGame();
  }
}

/// Проверяем на правильность ввода пункта меню
bool checkEnter(int menu) {
  return menu < 0 || menu > 3;
}

void showMenu() {
  print('1.Новая игра');
  print('2.Загрузить игру');
  print('3.Выйти');

  print('\n');
}

/// Выход из игры
void exitGame() {
  print('Выходим из игры...');
}

/// Загрузка игры
void loadGame() {
  print('Загрузить игру...');
}

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
