import 'dart:html';
import 'dart:math' as math;
void main(){
  var c;
  querySelector('#sample_text_id')
    ..text="Add number"
    ..onClick.listen((MouseEvent e)=>randomSelectStu(c,e));
}
void randomSelectStu(String c, MouseEvent event){
  var A,B;
  A=document.getElementById('sample_studentone_id').value;
  B=document.getElementById('sample_studenttwo_id').value;
  var a=int.parse(A);
  var b=int.parse(B);
  c=a+b;
  document.getElementById("sample_studentid_id").value=c.toString();
  printNumber(c);
}
void printNumber(num number) {
  print('The number is $number.');
}