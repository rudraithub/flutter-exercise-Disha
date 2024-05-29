void main(){
  Map <String, dynamic> s = {
    'Name' :'Rudra It Hub',
'Mobile' :' 9892345678',
'Address' :'Leela Circle,Bhavnagar',
'Courses' : ['Android','Ios','Java','Swift']
  };
  print(s);
  print(s['Mobile']);
  print(s.length);
  print(s['Name']);
  s.forEach((key, value)=> print("$key: $value"),);
 // s.addAll({"Email" : "rudraithub.bhavangar@gmail.com"});
  s["Email"] = "rudraithub.bhavangar@gmail.com";
  s.addAll({"Student Name" : "Disha", "Student Mobile No" : 912345678});
   print(s);
}