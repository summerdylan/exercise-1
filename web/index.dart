import 'dart:html';
import 'dart:math' as math;

void main() {
  querySelector('#sample_text_id')
    ..text = 'Click me!'
    ..onClick.listen(reverseText)
    ..onClick.listen(randomSelectStu);
}

void reverseText(mouseevent event) {
    var a1='4';
    //a1=querySelector('#text1').text;
    querySelector('#sample_text_id').text=a1;
    Add(1,2);
}
void Add(var a,var b)
{
  var c=a+b;
  String s=a.toString()+'+'+b.toString()+'='+c.toString();
  querySelector('#sample_add_id').text=s;
}
void randomSelectStu(MouseEvent event) {
var stuMap={
  0:111,
  1:112
};
var random = new math.Random();
var randomID=random.nextInt(2);
var stuID=stuMap[randomID];
querySelector('#sample_studentid_id').text ="The student number is "+stuID.toString();
}

