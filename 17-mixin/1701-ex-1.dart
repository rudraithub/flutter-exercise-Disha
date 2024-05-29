void main(){
var obj= variant();
obj.Electric();
obj.Petrol();
}

class variant with electric, petrol{

}
 mixin electric{
  Electric(){
    print('This is an electric variant');
  }
 }
 mixin petrol{
  Petrol(){
     print('This is an patrol variant');
  }
 }