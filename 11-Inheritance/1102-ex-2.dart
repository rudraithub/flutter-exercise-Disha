void main(){
var obj= name1();
print(obj.a);
print(obj.b);
}
 
 class name{
   String a= "Riya";
   String b= "Jinal";
   void display(){

   } 
 }

 class name1 extends name{
  void display(){
    super.display();
  }
  
 }