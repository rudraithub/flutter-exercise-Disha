void main(){
  int a= 80;
  int b= 44;
  int d= a*b;
  print("multiplication result: $d");
  if (d%2 == 0) {
    print('$d is even');
  } else {
    print('$d is odd');
  }
  if (d % 4 == 0 && d % 5 == 0) {
    print("$d is divisible by both 4 and 5.");
  } else {
    print("d is not divisible by both 4 and 5.");
  }
}