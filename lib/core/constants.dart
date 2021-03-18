import 'package:flutter/material.dart';

const String TITLE = 'Jogo da velha';

const int BOARD_SIZE = 9;

const Color PLAYER1_COLOR = Colors.deepOrange;
const Color PLAYER2_COLOR = Colors.deepPurple;

const String PLAYER1_SYMBOL = 'X';
const String PLAYER2_SYMBOL = 'O';

const String TIED_TITLE = 'EMPATOU!';
const String WIN_TITLE = 'JOGADOR "[SYMBOL]" GANHOU!';
const String RECOMECAR = 'RECOMEÇAR';

const opcoesDeVitoria = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
  [1, 4, 7],
  [2, 5, 8],
  [3, 6, 9],
  [1, 5, 9],
  [3, 5, 7],
];
