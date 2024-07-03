import 'package:flutter/material.dart';
import 'package:storeui/Pages/land.dart';
import 'package:storeui/constants.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  void _delete() {
    setState(() {
      // ignore: unused_local_variable
      int count = 0;
       count--;
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios_sharp),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LandPage()),
                      );
                    },
                  ),
                  const SizedBox(width: 100),
                  const Center(
                    child: Text('Search', style: TextStyle()),
                  )
                  
                ],
              ),
            ), 
            
               Padding( padding: const EdgeInsets.only(bottom: 40),
                 child: CustomTextField(
                  width: 366.0, // Set the desired width
                  borderColor: bord3, // Set the desired border color 
                             ),
               ),
               const SizedBox(height: 30,),
               Column(
                children: [
                  const Text('RECENT', style: TextStyle(),),
                  Row(
                    children: [
                      const Text('Phone tripod stand'),
                      const SizedBox(width: 200),
                      IconButton(
                        onPressed: _delete,
                       icon: const Icon(Icons.delete),
                       )
                    ],
                  )
                ],
               )
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
          labelText: 'Search product name',
          suffixIcon: const Icon(Icons.filter_vintage_sharp),
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
