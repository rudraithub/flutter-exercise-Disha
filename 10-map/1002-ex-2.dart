void main(){
  Map<String, dynamic> d ={
    ' Name' :'Gyanguru vidhyapith',
'Mobile': 900099890,
'Address' :'Sagwadi,Bhavnagar',
'Courses ': ['Commerce','Science','Arts']
};
print(d);
print(d['Mobile']);
 print(d.length);
  print(d['Name']);
  d.forEach((key, value)=> print("$key: $value"),);
  d.addAll({"Email" : "gyanguru@gmail.com"});
  print(d.isEmpty);

 }
