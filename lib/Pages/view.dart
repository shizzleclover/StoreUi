import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:storeui/constants.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({Key? key}) : super(key: key);

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 421,
              width: 414,
              decoration: BoxDecoration(
                color: cont3,
              ),
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      // Handle back button press
                    },
                    icon: Icon(Icons.arrow_back_ios, size: 24),
                  ),
                  SizedBox(width: 16),
                  Container(
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: txt2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'Assets/Icons/export.svg',
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hughlan Ergonomic \nAdjustable Office Chair',
                              style: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.w900, fontSize: 18),
                            ),
                            
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  'Hughlan Workspaces',
                                  style: TextStyle(fontFamily: 'Avenir'),
                                ),
                                SizedBox(width: 10),
                                SvgPicture.asset('Assets/Icons/'),
                                SizedBox(width: 10),
                                SvgPicture.asset('Assets/Icons/'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 120),
                      Container(
                        height: 78,
                        width: 79,
                        decoration: BoxDecoration(color: cont3),
                        child:
                        Column(children: [
Center(
                          child:  Text('\$113', style: TextStyle(color: txt4, fontWeight:FontWeight.w900, fontFamily: 'Avenir', fontSize: 21),),
                   
                        ),
                        SizedBox(height: 4,),
                        Text('7% off',style: TextStyle(color: txt4, fontWeight:FontWeight.w900, fontFamily: 'Avenir', fontSize: 12),)
                        ],)
                        
                          ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Hughlan ergonomic chair adopts an ergonomic design. This ergonomic desk chair can help you ease fatigue, reduce occupational diseases, and let you develop good sitting posture habits',
                    style: TextStyle(fontFamily: 'Avenir'),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'WORKSPACES ITEM CAN BE USED',
                    style: TextStyle(fontFamily: 'Avenir'),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 178,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Container(
                              child: Image.asset('Assets/Images/t.png'),
                              height: 81,
                              width: 219,
                              decoration: BoxDecoration(
                                color: cont2,
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            SizedBox(width: 10),
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Container(
                        height: 60,
                        width: 289,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: txt1,
                        ),
                        child: Center(
                          child: Text(
                            'Add to cart',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: def,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
