import 'dart:html';
import 'dart:math' as math;


void main() {
  querySelector('#sample_text_id')
    ..text = '5+6='
    ..onClick.listen(add1);
}

void reverseText(MouseEvent event) {
  var text = querySelector('#sample_text_id').text;
  var buffer = new StringBuffer();
  for (int i = text.length - 1; i >= 0; i--) {
    buffer.write(text[i]);
  }
  querySelector('#sample_text_id').text = buffer.toString();
}

void add(){
  i=5+6;
}

void display(MouseEvent event){
  querySelector('#sample_text_id').text = querySelector('#sample_text_id').text+i.toString();
}

void randomSelectStu(MouseEvent event) {
  var stuMap={
    0:1213344345,
    1:6786876872
  };
  var random = new math.Random();

  var randomID=random.nextInt(2);
  var stuID=stuMap[randomID];
  querySelector('#sample_studentid_id').text =stuID.toString();
}

int add2(){
  int number1=5;
  int number2=6;
  int number3=number1+number2;
  return number3;
}

void add1(MouseEvent event){
  int number3=add2();
  querySelector('#sample_text_id').text = querySelector('#sample_text_id').text+number3.toString();
}
3