import 'dart:html';
import 'dart:math' as math ;

void main() {
  querySelector('#sample_text_id')
    ..text = 'Click me first!'
    ..onClick.listen(randomSelectStu);

  querySelector('#sample_text_id').text = addDo(2,4).toString();

  querySelector('#button_add_id')
    ..text='Add'
    ..onClick.listen(addThemUp);
}

int addDo(var a, var b){
  var c = a+b;
  return c;
}

void addThemUp(MouseEvent event){
  var x = int.parse(querySelector('#number_a').value);
  var y = int.parse(querySelector('#number_b').value);
  querySelector('#sample_text_id2').text=addDo(x,y).toString();
}

void reverseText(MouseEvent event) {
  var text = querySelector('#sample_text_id').text;
  var buffer = new StringBuffer();
  for (int i = text.length - 1; i >= 0; i--) {
    buffer.write(text[i]);
  }
  querySelector('#sample_text_id').text = buffer.toString();
}

void randomSelectStu(MouseEvent event){

  var stuMap={
    0:'10130340101',
    1:'10130340102',
    2:'10130340103'
  };

  var random = new math.Random();

  var randomID = random.nextInt(3);

  var stuID = stuMap[randomID];

  querySelector('#sample_text_id').text = stuID;
}


