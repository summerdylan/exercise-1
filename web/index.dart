import 'dart:html';
import 'dart:math' as math;
void main(){
  var c;
  int s=0;
  querySelector('#sample_text_id')
    ..text="Add number"
    ..onClick.listen((MouseEvent e)=>randomSelectStu(c,e));
  querySelector('#sample_text1_id')
    ..onClick.listen((MouseEvent e)=>AddNumber(s,e));
}
void randomSelectStu(String c, MouseEvent event){
  var A,B;
  A=document.getElementById('sample_studentone_id').value;
  B=document.getElementById('sample_studenttwo_id').value;
  var a=int.parse(A);
  var b=int.parse(B);
  c=a+b;
  document.getElementById("sample_studentid_id").value=c.toString();
}
void AddNumber(int s, MouseEvent event){
  int i;
  for(i=1;i<=100;i++)
    s=s+i;
  document.getElementById("sample_add_id").value=s.toString();
}