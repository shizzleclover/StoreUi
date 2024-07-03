import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:storeui/Pages/devworkspace.dart';
import 'package:storeui/Pages/land.dart';
import 'package:storeui/constants.dart';


class WorkSpacePage extends StatelessWidget {
  const WorkSpacePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 20, top: 60),
              child: IconButton(
                onPressed: () {
                       Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LandPage()),
                    );
                }, 
               icon: Icon(Icons.arrow_back_ios_sharp)
               ), 
              ),
              Padding( padding: EdgeInsets.only(left: 20, top: 60),
                child: Center(
                  child: 
                  Text('Explores Workspace'),
                ),
              )
            ],
          ),
        SizedBox(height: 20),
Padding(
  padding: const EdgeInsets.only(bottom: 40),
  child: CustomTextField(
    width: 366.0, // Set the desired width
    borderColor: bord3, // Set the desired border color 
  ),
),
Container(
  height: 181,
  width: 366,
  decoration: BoxDecoration(
    color: Colors.black,
    borderRadius: BorderRadius.circular(32),
  ),
  child: Row(
    children: [
        Padding(
        padding: EdgeInsets.only(left: 16.0),  
          child: 
          Column(children: [
                Text(
            'FEATURED WORKSPACE', // Replace with your text
            style: TextStyle(color: Colors.white),
          ), 
          SizedBox(height: 10,),
          Text('Professional Gaming\n Assessories', style: TextStyle(color: Colors.white),),
            SizedBox(height: 10,),
            Column(
              children: [
                        Row(
              children: [
                         Text('View space', style: TextStyle(color:txt1),),
                      IconButton(
                        onPressed:() {}, 
                       icon: Icon(Icons.arrow_forward, color: txt1,)
                      )
              ],
            ),
            SizedBox(height: 10,),
            SvgPicture.asset('Assets/Icons/'),
              ],
            )
        
             
          ],)
        
      ),
      const SizedBox(width: 10), // Add spacing between text and image
      Image.asset(
        'Assets/Images/speak.png',
      ),
    ],
  ),
), 
//Browsw workspace
 SizedBox(height: 30,),
    Row(
      children: [
         SizedBox(width: 28,),
        Text('Browse Workspace', style: TextStyle(fontFamily: 'Avenir', ),),
        SizedBox(width: 150,),
        GestureDetector(
          onTap:   (){ 
              Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DevWorkSpace()),
                    );
          },
child:
        Row(children: [
           Text('See more', style: TextStyle(fontFamily: 'Avenir'),),
        IconButton(
          onPressed: () {
              Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DevWorkSpace()),
                    );
          },
           icon: Icon(Icons.arrow_forward_ios, color: txt2, size: 16,)
           ),
        ],),
        ),
      ],
    ),
    SizedBox(height: 30,),
    Row(
      children: [
        SizedBox(width: 30,),
        Container(
          width: 100,
          height: 46,

          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(
            child: Text('Show all',style: TextStyle( color: Colors.white, fontFamily: 'Avenir', fontWeight: FontWeight.w400),),
          ),
        ),
      ],
    )
        ],
      ),
    );
  }
}



class CustomTextField extends StatelessWidget {
  final double width;
  final Color borderColor;

  const CustomTextField({required this.width, required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: TextField(
        decoration: InputDecoration(
          labelText: 'What do you do?',labelStyle: TextStyle(fontFamily: 'Avenir', color: txt2),
          suffixIcon: SvgPicture.asset('Assets/Icons/filt.svg', height: 20, width: 20,),
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(
              color: borderColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(
              color: borderColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(
              color: borderColor,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}
