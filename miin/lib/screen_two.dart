import 'package:flutter/material.dart';
class SecondScreen extends StatefulWidget {
  var data;
  SecondScreen({this.data,super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         appBar: AppBar(
            leading: Icon(Icons.menu),
            title: Text("Second Screen"),
            
            backgroundColor: Colors.pink,
          ),
          body: Container(
            width: double.infinity,
             child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                Container(
                  height: 300,
                  child: Image.asset(
                    widget.data[0], 
                    fit: BoxFit.contain,),
                ),
                SizedBox(height: 13,),
                Text(widget.data[1], style: TextStyle(
                  fontSize: 20,
                ),),
                SizedBox(height: 13,),
                ElevatedButton(
                onPressed: (){
                  Navigator.pop(context, ModalRoute.withName("/"));
                }, 
                child: Container(
                
                  padding: EdgeInsets.all(14),
                  child: Text("Back To ",style: TextStyle(fontSize: 25,
                   ) , 
                  ))
                  
                ),
                SizedBox(height: 12,),
                
                
                ],

             ),
           )
    
      )
    );
  }
}

