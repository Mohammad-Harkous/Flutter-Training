class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    // creating a copy of list answers using "List.of()" function
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
