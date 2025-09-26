Map<String, int> productPrices = {
  '티셔츠' : 10000, '바지' : 8000, '모자' : 4000};

void main(){

List<String> cart = ['티셔츠', '바지', '모자', '티셔츠', '바지'];
int totalCost = 0;
for (String item in cart)
totalCost += productPrices[item]!;

print('장바구니에 $totalCost원 어치를 담으셨네요');
   int finalCost = totalCost;
  if (totalCost > 20000){
    int sale = (totalCost*0.1).toInt();
    print('할인 금액 : $sale원');
    finalCost = totalCost - sale;
   }else {
  print("");
  }print('최종적으로 결제하실 금액은 $finalCost원 입니다!');
}

  
 /*
 Map을 사용해서 품목과 가격을 설정해 주었고
 List를 사용해 품목을 cart에 겹치게 담길 수 있도록 했다
 for in 문으로 cart에 담긴 품목을 순회해 해당 가격을 +=로 합해주었다
 그리고 if-else문으로 2만원이 넘을 경우에만 할인이 적용되도록 했다
 */