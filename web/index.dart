 import 'dart:html';
import 'dart:math' as math;
void main (){
  querySelector('#sample_text_id')
    .. text="1+2+бнбн+100="
    .. onClick.listen(Add);
}

void Add(MouseEvent event) {
  var text= querySelector('#sample_studentid_id').text;
  int x,y;
  x=1;

  for (var i = 2; i < 101; i++) {
      x=x+i;
  }

  querySelector('#sample_studentid_id').text= x.toString();

}

