void main(){
  var obj= A();
  
  print(obj.functionName);
  obj.Function2= "Ruhi";
  print(obj.functionName);
}

class A {
  String _a= 'Default value';

  String get functionName => _a;
  set Function2(String value)
  {
    _a= value;
  }

}