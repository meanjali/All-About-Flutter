import 'QnA.dart';

class QuizBrain{
  int _qnumb=0;
  List <QnA>_questionBank=[
    QnA("Everything in Flutter is Widget",true),
    QnA("Flutter is based on Java Programming lang",false),
    QnA("Widgets in flutter are categorized as Stateful and Stateless",true),
  ];

  void nextquestion(){
    if(_qnumb<_questionBank.length-1){
      _qnumb++;
    }
  }
bool isFinished(){
    if(_qnumb>=_questionBank.length-1){
      return true;
    }
    else{
      return false;
    }
}
  String getQuestion(){
    return _questionBank[_qnumb].question;
  }
  bool getAnswer(){
    return _questionBank[_qnumb].answer;
  }
  void reset() {
    _qnumb = 0;
  }
}