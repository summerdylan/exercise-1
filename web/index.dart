import 'dart:html';
import 'dart:math' as math;
void main() {
  querySelector('#sample_text_id')
    ..text = '3+6='
    ..onClick.listen(add);
}

void reverseText(MouseEvent event) {
  var text = querySelector('#sample_text_id').text;
  var buffer = new StringBuffer();
  for (int i = text.length - 1; i >= 0; i--) {
    buffer.write(text[i]);
  }
  querySelector('#sample_text_id').text = buffer.toString();
}



void randomSelectStu(MouseEvent event) {
  var stuMap = {
    0:1213344345,
    1:6786876872
  };
  var random = new math.Random();

  var randomID = random.nextInt(2);
  var stuID = stuMap[randomID];
  querySelector('#sample_studentid_id').text = stuID.toString();
}

  void add(MouseEvent event) {
    var number1 = 3;
    var number2 = 6;
    var number3 = number1 + number2;
    querySelector('#sample_sum_id').text = number3.toString();
  }