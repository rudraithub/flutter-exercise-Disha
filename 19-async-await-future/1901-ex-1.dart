void main()async{
print('Line1');
await display();
print('Line3');
}
 
 display(){
  Future.delayed(Duration(seconds:5),()=> print('Line2'));
 }