class QuizQuestion {
  // constructor function, mapped to below properties
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    // List.of() makes a new list of a list
    shuffledList.shuffle();
    // variable is final but can be changes because list.of() makes a new list in memory, does not try to re-assign a value
    return shuffledList;
  }
}
