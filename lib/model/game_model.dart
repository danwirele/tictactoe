class GameModel {
  late final List<List<int>> gameArea;
  GameModel() {
    _initGameArea(gameArea);
  }

  void _initGameArea(List<List<int>> gameArea) {
    gameArea = List.generate(3, (index) => [0, 0, 0]);
  }
}
