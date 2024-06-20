import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: dk(),
    );
  }
}

class dk extends StatefulWidget {
  const dk({super.key});

  @override
  State<dk> createState() => _dkState();
}

class _dkState extends State<dk> {
  DateTime dte= DateTime.now();
  TimeOfDay dte2= TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Datepicker Examples",
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
       ),
       body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
          [
           ElevatedButton.icon(onPressed:()async{
          
            final DateTime? dateTime= await showDatePicker(
              context: context, 
              firstDate: DateTime(1998), 
              lastDate: DateTime(2040));
              setState(() {
                dte= dateTime!;
              });
          }, 
          style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 117, 213, 230),
               shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
             ),
          icon: Icon(Icons.calendar_month), 
          label:Text("    ")
           ),
            Text("${dte.day}-${dte.month}-${dte.year}"),

            SizedBox(height: 40,),
            OutlinedButton.icon(onPressed:()async{
             final TimeOfDay? timeOfDay= await showTimePicker(context: context, 
             initialTime: TimeOfDay(hour: 24, minute:24) );
              setState(() {
               dte2=timeOfDay!;
              });
          }, 
           style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 117, 213, 230),
               shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
             ),
          icon:Icon(Icons.lock_clock), 
          label: Text("   ")),
          Text("${dte2.hour}:${dte2.minute}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),
           ],
           
        ),
       ),
    );
  }
}