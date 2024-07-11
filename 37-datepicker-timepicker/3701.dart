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
  TimeOfDay tme= TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Datepicker Examples",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white
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
               tme=timeOfDay!;
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
          Text("${tme.hour}:${tme.minute}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),
           ],
           
        ),
       ),
    );
  }
}