void main(){
  var a=[7,8,9,10];
  var x= a.singleWhere((element) => element==7);
  if (x==7) {
    print("7");
  }
}