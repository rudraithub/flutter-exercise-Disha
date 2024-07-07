
void main(){
B obj= B();
obj.a();
obj.b();
obj.c();
}

class A {
  void a(){
    print("class A is First method");
  }

  void b(){
    print("class B is Second method");
  }

   void c(){
    print("class C is Third method");
  }
}

class B implements A {
  @override 
  void a(){
    print("After implementation class A first method");
  }

   @override 
  void b(){
    print("After implementation class A Second method");
  }

   @override 
  void c(){
    print("After implementation class C first method");
  }

}