import 'dart:io';

import 'package:swords_and_magic/features/game.dart';
import 'package:swords_and_magic/features/game_load.dart';
import 'package:swords_and_magic/features/game_over.dart';

bool isRunGame = true;

void startGame() {
  while (isRunGame) {
    _game();
  }
}

void _game() {
  /// Меню
  _showMenu();
  print('Введите необходимый пункт: ');
  // Приводим строку к типу int
  final int menu = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  if (_checkEnter(menu)) {
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
bool _checkEnter(int menu) {
  return menu < 0 || menu > 3;
}

/// Вывод меню
void _showMenu() {
  print('1.Новая игра');
  print('2.Загрузить игру');
  print('3.Выйти');

  print('\n');
}
