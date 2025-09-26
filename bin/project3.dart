import 'dart:math';
// 난수 생성을 위해 라이브러리를 가져오기
void main() {
  
  Set<int> winningNumbers = {9, 19, 29, 35, 37, 38};

  // 당첨 번호를 저장할 리스트
  List<int> myNumbers = [];

  final random = Random();

  // 6개의 고유한 당첨 번호 뽑기
  for (int i = 0; myNumbers.length < 6; i++){ //당첨번호를 6개만 출력하기 위해 값을 6 미만으로 지정(0부터 시작이라)
    int arrowNumber = random.nextInt(45) + 1;  // 
    if (!myNumbers.contains(arrowNumber)){
      myNumbers.add(arrowNumber);
    }
  }
  print('발급한 로또 번호 : $myNumbers');

  // 내 번호와 당첨 번호가 일치하는 개수 확인
  int sameNumber = 0;
  for (int winningNumber in winningNumbers) {
    if (myNumbers.contains(winningNumber)) {
      sameNumber++;
    }
  }

  if (sameNumber >= 5) {
    print('당첨 여부 : 1등');
  } else if (sameNumber >= 4){
    print('당첨 여부 : 2등');
  } else if (sameNumber >= 3){
    print('당첨 여부 : 3등');
   } else {
      print('당첨 여부 : 당첨 실패!');
    }
myNumbers.clear();
print('현재 발급한 로또 번호 : $myNumbers');
  
  }
