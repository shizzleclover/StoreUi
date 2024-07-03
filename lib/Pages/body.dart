import 'package:flutter/material.dart';
import 'package:storeui/Pages/land.dart';
import 'package:storeui/Pages/login.dart';
import 'package:storeui/constants.dart';

class BodyPage extends StatelessWidget {
  const BodyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('Assets/Images/backgroung.png'), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Overlay text
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Padding(
            padding: EdgeInsets.only(top: 600, left: 20),
            child: 
       
            Text(
              'WELCOME',
              style: TextStyle(
                color: txt1,
                fontSize: 18,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.w900,
              ),
            ),
            
            
          ),
          SizedBox(height: 2,),
           Padding(
            padding: EdgeInsets.only( left: 20),
            child: 
       
            Text(
              'Remotely.io',
              style: TextStyle(
                 fontFamily: 'Avenir',
                fontSize: 42,
                color:def ,
                fontWeight: FontWeight.w900,
              ),
            ),
            
            
          ),
           Padding(
            padding: EdgeInsets.only(  left: 20),
            child: 
       
            Text(
              'We serve you with the best gadgets for your\n home workspace',
              style: TextStyle(
               fontFamily: 'Avenir',
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: def
              ),
            ),
            
            
          ),
          SizedBox(height: 25,),
          Center(
            child: 
            GestureDetector(
              onTap: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  LandPage()),
                    );
              },
              child: 
          Container(
            height: 60,
            width: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: txt1
            ),
            child: Center(
              child: Text('Browse Shop', style: TextStyle(fontFamily: 'Avenir', fontSize: 18,fontWeight: FontWeight.w500),),
            ),
          ),
          ),
          
          ),
          SizedBox(height: 5,),
          GestureDetector(
            onTap: () {
                   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
            },
            child: Center(
              child: Text('Login', style: TextStyle(fontSize:18,fontFamily: 'Avenir', fontWeight: FontWeight.w900, color: def),),
            ),
          )
          ],
          ),
        ],
      ),
    );
  }
}
