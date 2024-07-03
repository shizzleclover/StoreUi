import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:storeui/Pages/suggest.dart';
import 'package:storeui/constants.dart';

class DevWorkSpace extends StatelessWidget {
  const DevWorkSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 40, left: 20),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back_ios_outlined),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Developer Workspace',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                        Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SuggestPage()),
                    );
                    }, 
                    child: Container(
                      height: 34,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: cont4,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width:11,),
                          Text(
                            'Suggest',
                            style: TextStyle(fontSize: 16, color: txt3, fontFamily: 'Avenir'),
                          ),
                        
                          IconButton(
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            onPressed: () {},
                            icon: Icon(Icons.add, size: 16,color: txt3,),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
              Padding(
  padding: const EdgeInsets.only(bottom: 40, left: 20),
  child: Column(children: [
     Text('16 suggested items', style: TextStyle(color: txt2, fontFamily: 'Avenir'),), 
   CustomTextField(
    width: 366.0, // Set the desired width
    borderColor: bord3, // Set the desired border color 
  ),
  ],),
           
),
          ],
        ),
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
          labelText: 'What are you looking for?',labelStyle: TextStyle(fontFamily: 'Avenir', color: txt2),
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
