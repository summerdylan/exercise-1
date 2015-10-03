import 'dart:html';
import 'dart:math' as math;

void main() {
  querySelector('#sample_text_id')
    ..text = 'Click me!'
    ..onClick.listen(reverseText)
    ..onClick.listen(getnumber);
}

int yunSuan(){
  int i,s=0;
  for(i=1;i<=100;i++)s=s+i;
  return s;
}
void getnumber(mouseevent event){//得到文本框中数字
  string a=querySelector("#text1");
}
void shuchu(string s){
  querySelector("#sample_text_id")
  ..text=s;
}
void reverseText(mouseevent event) {
  int a=yunSuan();
  String ss="1 add to 100 is:"+a.toString();
  querySelector('#sample_add_id').text=ss;
}


