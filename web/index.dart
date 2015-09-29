import 'dart:html';
import 'dart:math' as math;
var number1=2; var number2=3;
void main() {
  querySelector('#sample_text_id')
    ..text = 'Click me!'
    ..onClick.listen(reverseText);
}


void reverseText(MouseEvent event) {
  var text = querySelector('#sample_text_id').text;
  var number = number1+number2;

  querySelector('#sample_text_id').text = number.toString();

}


void randomSelectStu(MouseEvent event) {
  var stuMap={
    0:1213344345,
    1:6786876872,
    2:10130340208
  };
  var random = new math.Random();

  var randomID = random.nextInt(3);  // Between 0 and 9.
  var stuID=stuMap[randomID];
  querySelector('#sample_text_id').text =stuID.toString();
}



