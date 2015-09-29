import 'dart:html';
import 'dart:math' as math;
void main(){
  querySelector('#sample_text_id')
    ..text="Add number"
    ..onClick.listen(randomSelectStu);
}
void addNumber(int a, int b) {
  var c;
  c=a+b;

  document.getElementById("sample_studentid_id").value=c.toString();
}
void randomSelectStu(MouseEvent Event){
  var A,B;
  A=document.getElementById('sample_studentone_id').value;
  B=document.getElementById('sample_studenttwo_id').value;
  var a=int.parse(A);
  var b=int.parse(B);
  addNumber(a,b);
}
