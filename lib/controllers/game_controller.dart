import 'package:jogo_da_velha/core/constants.dart';
import 'package:jogo_da_velha/enums/player_type.dart';
import 'package:jogo_da_velha/enums/winner_type.dart';
import 'package:jogo_da_velha/models/board_tile.dart';

class GameController {
  List<BoardTile> tiles = [];
  List<int> movesPlayer1 = [];
  List<int> movesPlayer2 = [];
  PlayerType currentPlayer;

  bool get hasMoves =>
      (movesPlayer1.length + movesPlayer2.length) != BOARD_SIZE;

  GameController() {
    _initialize();
  }

  void _initialize() {
    movesPlayer1.clear();
    movesPlayer2.clear();
    currentPlayer = PlayerType.player1;
    tiles =
        List<BoardTile>.generate(BOARD_SIZE, (index) => BoardTile(index + 1));
  }

  void reset() {
    _initialize();
  }

  void markBoardTileByIndex(index) {
    final tile = tiles[index];
    if (currentPlayer == PlayerType.player1) {
      _markBoardTileWithPlayer1(tile);
    } else {
      _markBoardTileWithPlayer2(tile);
    }

    tile.enable = false;
  }

  void _markBoardTileWithPlayer1(BoardTile tile) {
    tile.symbol = PLAYER1_SYMBOL;
    tile.color = PLAYER1_COLOR;
    movesPlayer1.add(tile.id);
    print(movesPlayer1.toString());
    currentPlayer = PlayerType.player2;
  }

  void _markBoardTileWithPlayer2(BoardTile tile) {
    tile.symbol = PLAYER2_SYMBOL;
    tile.color = PLAYER2_COLOR;
    movesPlayer2.add(tile.id);
    print(movesPlayer2.toString());
    currentPlayer = PlayerType.player1;
  }

  bool _checkPlayerWinner(List<int> moves) {
    return opcoesDeVitoria.any((rule) =>
        moves.contains(rule[0]) &&
        moves.contains(rule[1]) &&
        moves.contains(rule[2]));
  }

  WinnerType checkWinner() {
    if (_checkPlayerWinner(movesPlayer1)) return WinnerType.player1;
    if (_checkPlayerWinner(movesPlayer2)) return WinnerType.player2;
    return WinnerType.none;
  }
}
