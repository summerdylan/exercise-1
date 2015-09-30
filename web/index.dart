import 'dart:html';
void main(){
  querySelector('#btn1')
  ..onClick.listen(Add);
  querySelector('#btn2')
    ..onClick.listen(Clear);
}
void Add(MouseEvent event){
  var a=int.parse(document.getElementById('txt1').value);
  var b=int.parse(document.getElementById('txt2').value);
  var c=a+b;
  querySelector('#txt3').value=c.toString();
}
void Clear(MouseEvent event){
  querySelector('#txt1').value='';
  querySelector('#txt2').value='';
  querySelector('#txt3').value='';
}