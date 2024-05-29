void main(){
  Map <String, dynamic> s = {
    'Name' :'Alexandra Abramov',
    'Dob' :' July 14, 1975',
    'Mobile' :'99-99999999999',
    
  };
  print(s);
  s.forEach((key, value)=> print("$key: $value"),);
 }