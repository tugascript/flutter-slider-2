enum DifficultyEnum { easy, medium, hard }

class Difficulty {
  final DifficultyEnum difficultyEnum;

  Difficulty({
    required this.difficultyEnum,
  });

  int getTime(int level) {
    int seconds = 0;

    switch (difficultyEnum) {
      case DifficultyEnum.hard:
        seconds = 150;
        break;
      case DifficultyEnum.medium:
        seconds = 300;
        break;
      case DifficultyEnum.easy:
      default:
        seconds = 600;
        break;
    }

    return seconds * level;
  }
}
