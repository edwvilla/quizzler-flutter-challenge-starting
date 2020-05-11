import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Cerca de un 20 % de la población mundial es musulmana.', true),
    Question('El cerebro es el órgano más pesado del cuerpo humano.', false),
    Question('Más del 50 % de la mortalidad infantil se debe al problema del hambre mundial.', true),
    Question('La phobofobia es la fobia a la filosofía.', false),
    Question('La longitud del Río Nilo es de 6650 kilómetros.', true),
    Question('Es ilegal orinar en el oceano de Portugal.', true),
    Question('La entomología es la ciencia que estudia el desarrollo de los organismos unicelulares.', false),
    Question('Los animales de la especie Homo sapiens son plantígrados.', true),
    Question('La Universidad de Cambridge se fundó antes que el Machu Picchu.', true),
    Question('La superficie de Chile es mayor que la de Francia.', true),
    Question('Google originalmente se llamaba \"Backrub\".', true),
    Question('Gran Bretaña y Reino Unido son lo mismo.', false),
    Question('En West Virginia, USA, si accidentalmente golpeas un animal en tu auto, eres libre de llevarlo a casa para cenar.', true),
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

  bool isFinished() {
    if (_questionNumber >= _questionBank.length -1 ) {
      print('now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
