import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Ensure the correct package is imported
import 'package:storeui/Pages/login.dart';
import 'package:storeui/constants.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: def,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Hi fella',
                    style: TextStyle(
                      fontSize: 30,
                      color: txt2,
                      fontFamily: 'Avenir',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(width: 10),
                  Image.asset('Assets/Images/emoji.png'),
                ],
              ),
              SizedBox(height: 10), // Changed to height
              Row(
                children: [
              Text(
                'Welcome to',
                style: TextStyle(
                  fontSize: 30, 
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(width: 10,),
              Text('Remotely.io', style: TextStyle(
                  fontSize: 30, 
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.w800,
                  color: txt1
                ),)
              ],
              ),
                 SizedBox(height: 25,),
             Container(
                height: 60,
                width: 366,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30 ),
                  child: Row(
                    children: [
                      SvgPicture.asset('Assets/Icons/goo.svg'),
                      SizedBox(width: 40,),
                      Center(
                        child: Text(' Login with Google', style: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.w700, fontSize: 15),)
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: bord, width: 0.84),
                  borderRadius: BorderRadius.circular(8)
                ),
              ),
              SizedBox(height: 25,),
              Container(
                height: 60,
                width: 366,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30 ),
                  child: Row(
                    children: [
                      SvgPicture.asset('Assets/Icons/fbb.svg'),
                      SizedBox(width: 40,),
                      Center(
                        child: Text(' Login with Facebook', style: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.w700, fontSize: 15),)
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: bord, width: 0.84),
                  borderRadius: BorderRadius.circular(8)
                ),
              ),
              SizedBox(height: 25,),
              Center(
                child: Text('OR', style: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.w500, fontSize: 15),),
              ),
              SizedBox(height: 25,),
              Text('Email', style: TextStyle(),),
             Container(
          width: double.infinity,
          child: TextField(
            decoration: InputDecoration(
        filled: true, // This line ensures the fillColor is used
        fillColor: txtfld,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.transparent, width: 0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.transparent, width: 0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.transparent, width: 0),
        ),
        hintText: 'Eg. jamesburnes@gmail.com',hintStyle: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.w500)
            ),
          ),
        ),


           SizedBox(height: 25,),
               Text('Phone Number',style: TextStyle(),),
               Row(
                children: [
           Container(
          width: 66,
          child: TextField(
            decoration: InputDecoration(
        filled: true, // This line ensures the fillColor is used
        fillColor: txtfld,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.transparent, width: 0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.transparent, width: 0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.transparent, width: 0),
        ),
        hintText: '+233', hintStyle: TextStyle(fontFamily: 'Avenir', color: txt2, fontWeight: FontWeight.w400)
             
            ),
          ),
        ),
        SizedBox(width: 10,),
              Container(
          width: 292,
          child: TextField(
            decoration: InputDecoration(
        filled: true, // This line ensures the fillColor is used
        fillColor: txtfld,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.transparent, width: 0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.transparent, width: 0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.transparent, width: 0),
        ),
         
             
            ),
          ),
        ),
        ],
        ),


              SizedBox(height: 25,),
               Text('Password',style: TextStyle(),),
           Container(
          width: double.infinity,
          child: TextField(
            decoration: InputDecoration(
        filled: true, // This line ensures the fillColor is used
        fillColor: txtfld,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.transparent, width: 0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.transparent, width: 0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.transparent, width: 0),
        ),
             
            ),
          ),
        ),
      SizedBox(height: 20,),
      GestureDetector(
        onTap: () {},
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: txt1,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              'Sign Up', style: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.w500, fontSize:18 ),
            ),
          ),
        ),
      ),
      SizedBox(height: 50,),
      Row(
        children: [
          Text('Already have an account?',style: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.w800, color: txt2),),
          SizedBox(width: 140,),
          GestureDetector( onTap: (){
 Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
          }, child: Text('Log In',  style: TextStyle(color: txt3,fontFamily: 'Avenir', fontWeight: FontWeight.w800),
          ),
          )
        ],
      )
            ],
          ),
        ),
      ),
    );
  }
}
