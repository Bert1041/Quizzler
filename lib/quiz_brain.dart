import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  double progressValue = 0;

  List<Question> _questionBank = [
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
    Question('Abraham Lincoln had no middle name.', true),
    Question('John Lennon\'s middle name was Edward.', false),
    Question('Japan has square watermelons.', true),
    Question(
        'Pinocchio was the first animated, full-color Walt Disney feature film.',
        false),
    Question('Porcupines can float.', true),
    Question('Before becoming queen, Queen Elizabeth was a mechanic.', true),
    Question(
        'In some states, it\'s illegal to eat specific foods while walking backwards.',
        true),
    Question('Donald Duck\'s sister is named Donna.', false),
    Question('Twinkies originally had banana filling', true),
    Question('People in Japan eat Kentucky Fried Chicken for Christmas dinner',
        true),
    Question('Fortune cookies were invented in China', false),
    Question(
        'It\'s illegal in Georgia to eat fried chicken with a knife and fork.',
        true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  // method is finished
  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  //Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

  //Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
    progressValue = 0;
  }
}
