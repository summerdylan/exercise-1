import 'dart:html';
import 'dart:math' as math;
void main() {

querySelector('#sample_text_id')
..text="click me!"
..onClick.listen(myText);
}

void myText(MouseEvent event){
  var a= document.getElementById("myTexta").value;
  var b= document.getElementById("myTextb").value;
  var A= int.parse(a);
  var B= int.parse(b);
  addNum(A,B);

}
void addNum(num a,num b){
  var m=a+b;
  querySelector('#sample_text_id').text=m.toString();
}
