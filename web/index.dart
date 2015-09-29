import 'dart:html';
void main() {
  querySelector('#button').onClick.listen(start);
}
void start(MouseEvent event){
  int a =int.parse(document.getElementById("text1").value);
  int b =int.parse(document.getElementById("text2").value);
  var s=document.getElementById("select");
  if(s.options[s.selectedIndex].value=="1")
  document.getElementById("text3").value=(a+b).toString();
  else if(querySelector('#select').value=="2")
    document.getElementById("text3").value=(a-b).toString();
  else
    document.getElementById("text3").value=(a*b).toString();
}

