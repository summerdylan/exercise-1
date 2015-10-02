import 'dart:html';


//String str;
int sum=0;
bool check=false;

void main() {
  querySelector('#sample_text_id')
    ..text = 'Please input the start number and the end number!'+' \r\nThen click here!'
    ..onClick.listen(Oh);
}
int add([int k]){
  sum=sum+k+1;
  return sum;
}


void Oh(MouseEvent event) {
  InputElement num1, num2;
  num1 = document.getElementById("F1");
  num2 = document.getElementById("F2");
  int i = int.parse(num1.value);
  int j = int.parse(num2.value);
  sum = i;
  if (check == false) {
    querySelector('#sample_text_id').text = '';
    for (int k = i;k < j;k++) {
      querySelector('#sample_text_id').text = querySelector('#sample_text_id').text + '\r\n' + sum.toString() + '+' + (k + 1).toString() + '=' + add(k).toString();
    }
  } else {
    //querySelector('#sample_text_id').text = '';
    querySelector('#sample_text_id').text = 'Please input the start number and the end number!';
    check = true;
  }
}

