import 'package:flutter/material.dart';
import 'package:miin/screen_two.dart';

class FisrtScreen extends StatefulWidget {
  const FisrtScreen({super.key});

  @override
  State<FisrtScreen> createState() => _FirstScreenState ();
}

class _FirstScreenState extends State<FisrtScreen> {

  final data = ["images/miin.jpeg","MohamedAmiin Ibrahim Abdirahmaan"];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.menu),
            title: Text("FirstS Screen"),
            
            backgroundColor: Colors.pink,
          ),
    
           body: Container(
            width: double.infinity,
             child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                Container(
                  // height: 420,
                  // width: double.infinity,
                  child: Image.asset(data[0],
                  fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 13,),
                Text(data[1], style: TextStyle(
                  fontSize: 20,
                ),),
                SizedBox(height: 13,),
                ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => SecondScreen(data:data))
                    );
                }, 
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Text("Go To",style: TextStyle(fontSize: 20),))
                ),
                SizedBox(height: 10,),
                ],
             ),
           )
    
        ),
    );
  }
}
