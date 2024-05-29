void main(){
  Map<String, dynamic> t = {
    'Hospital Name' :'Pulse',
'Mobile' : 900099890,
'Address' :'Top three,Bhavnagar',
'Department' : ['Radiology','Orthopedics']
  };
 print(t);
 print(t['Mobile']); 
 print(t.length);
  print(t['Name']);
  t.forEach((key, value)=> print("$key: $value"),);
  t.addAll({"Email" : "pulse@gmail.com"});
  print(t.isEmpty);
  t.remove("Address");
  t.addAll({"Doctor Name" : "J.B.Patel","Staff" : 400});
  print(t);

}