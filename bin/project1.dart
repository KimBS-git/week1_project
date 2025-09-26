import 'package:week1_project/week1_project.dart' as week1_project;

void main(){
  int score = 84;
  String grade = '';
  if (score >= 90) {
 grade = 'A등급';
  } else if (score >= 80) {
   grade = 'B등급';
  } else {
grade = 'C등급';
  } 
  print('이 학생의 점수는 $score점 이며, 등급은 $grade입니다!');
  }
  /*
  int와 String을 사용해 변수를 지정해 주었다
  if문을 사용해 조건에는 점수를 주고 점수에 맞는 등급이 나오도록 했다
  */
