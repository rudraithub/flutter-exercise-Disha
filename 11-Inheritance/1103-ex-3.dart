void main(){
 var obj= C();
 obj.display();
}

class A{
  String a= 'Kiya';
  String b= 'Jinal';
  String c= 'Riya';
  void display(){
    print(a); 
    print(b);
    print(c);
  }
}

class B extends A {
   void display();
}

class C extends B {
   void display();
}

