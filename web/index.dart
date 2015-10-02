import 'dart:html';
import 'dart:math' as math;
void main() {

   querySelector('#sample_text_id')
    ..text="Input The Numbers First AND Click Me To Get The Result"
    ..onClick.listen(myText);
   querySelector('#sample_text_result')
     ..text="CLICK ME TO GET THE RESULT"
     ..onClick.listen(addhundred);
}


void myText(MouseEvent event){
  var a =  document.getElementById("myTexta").value;
  var b = document.getElementById("myTextb").value;
  var A = int.parse(a);
  var B = int.parse(b);
  addNumber(A,B);
}


void addNumber(num a,num b){
  var c=a+b;
  document.getElementById("sample_studentid_id").value=c.toString();
}

void addhundred(MouseEvent event){
  var s=0;
  for (int i = 1; i <101; i++){
  s=s+i;
  }
  querySelector('#sample_text_result').text=s.toString();
}