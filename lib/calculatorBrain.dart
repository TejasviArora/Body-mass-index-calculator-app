import 'dart:math';
class CalculatorBrain{
  final int weight;
  final int height;
  double _bmi;
  CalculatorBrain({this.weight,this.height});

  String calculateBMI(){
   _bmi= weight / pow(height/100,2);

    return _bmi.toStringAsFixed(1);
}

  String getResult(){
    if ( _bmi >30){
    return "Overweight";
  }
  else if ( _bmi >18.5 && _bmi < 24.9){
    return "Healthy";
  }

  else  {
    return "Undereweight";
  }
    }

  String getInterpretation(){

    if (_bmi >30){
      return "you have more than normal body weight. Do exercises";
    }
    else if ( _bmi >18.5 && _bmi < 24.9){
      return "Your BMI is good. Good Job!";
    }

    else  {
      return "you have less than normal BMI. Eat more than normal";
    }
  }
  }







//.....final
//
// if(_bmi >= 25) {
// return ;
// }
// else if(_bmi >= 18.5){
// return 'You have a normal body weight. Good Job! ';
// }
// else{
// return 'your wight is less than the normal one. You need to gain some weight';
// }