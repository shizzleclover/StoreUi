import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:storeui/Pages/cartPage.dart';
import 'package:storeui/Pages/search.dart';
import 'package:storeui/Pages/view.dart';
import 'package:storeui/Pages/workspace.dart';
import 'package:storeui/constants.dart';

class LandPage extends StatelessWidget {
  const LandPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 10),
              child: Row(
                children: [
                  Image.asset('Assets/Images/pfp.png'),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SearchPage()),
                      );
                    },
                    child: Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                         border: Border.all(color: bord2),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child:  Icon(Icons.search),
                      ),
                    ),
                  ),
                     SizedBox(width: 20,),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CartScreen()),
                      );
                    },
                    child: Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                       border: Border.all(color: bord2),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: SvgPicture.asset('Assets/Icons/b.svg'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
           
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Popular now',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.w900,
                    fontSize: 21,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 218,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: cont1,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20,),
                            Text(
                              "Adjustable Office Chair ",
                              style: TextStyle(
                                color: def,
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.w900,
                                fontSize: 21,
                              ),
                            ),
                            SizedBox(height: 15,),
                            Row(
                              children: [
                                Text(
                                  'Hughlan Workspaces',
                                  style: TextStyle(
                                    color: txt2,
                                    fontFamily: 'Avenir',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(width: 6),
                                Text(
                                  '4.8',
                                  style: TextStyle(color: def, fontFamily: 'Avenir'),
                                ),
                                const SizedBox(width: 2),
                                SvgPicture.asset('Assets/Icons/Vector.svg'),
                              ],
                            ),
                            SizedBox(height: 26,),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => ViewPage()),
                                    );
                                  },
                                  child: Container(
                                    width: 111,
                                    height: 42,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: txt1,
                                    ),
                                    child: Center(
                                      child: Text('View Item', style: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.w500),),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  height: 42,
                                  width: 42,
                                  decoration: BoxDecoration(
                                    color: contround,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Center(
                                    child: SvgPicture.asset('Assets/Icons/shop.svg'),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Image.asset('Assets/Images/chair.png'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const Text('Workspaces', style: TextStyle(fontFamily: 'Avenir', fontSize: 21, fontWeight: FontWeight.w900)),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WorkSpacePage()),
                      );
                    },
                    child: Row(
                      children: [
                          Text('See More', style: TextStyle(fontFamily: 'Avenir', fontSize: 14, fontWeight: FontWeight.w500, color: txt2)),
                        
                        IconButton(
                          onPressed: () {},
                           icon: Icon(Icons.arrow_forward_ios, color: txt2, size: 16,)
                           ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 178,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      width: 136,
                      decoration: BoxDecoration(
                        color: cont2,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('Assets/Images/t.png'),
                          const SizedBox(height: 10),
                          const Text('Developer', style: TextStyle(fontFamily: 'Avenir', fontSize: 18, fontWeight: FontWeight.w800)),
                          const SizedBox(height: 4),
                          Text('21 Suggested', style: TextStyle(fontFamily: 'Avenir', fontSize: 14, fontWeight: FontWeight.w500, color: txt2)),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const Text('New arrivals', style: TextStyle(fontFamily: 'Avenir', fontSize: 18, fontWeight: FontWeight.w800)),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WorkSpacePage()),
                      );
                    },
                    child: Row(
                      children: [
                          Text('See More', style: TextStyle(fontFamily: 'Avenir', fontSize: 14, fontWeight: FontWeight.w500, color: txt2)),
                         
                         Icon(Icons.arrow_forward_ios, size: 16,color: txt2,)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: bord2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 80,
                        width: 105,
                        decoration: BoxDecoration(
                          color: shade,
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Image.asset('Assets/Images/wa.png'),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Smart Apple Watch SE', style: TextStyle(fontFamily: 'Avenir', fontSize: 16, fontWeight: FontWeight.w800)),
                         const SizedBox(height: 4),
                        Row(
                          children: [
                              Text('Jodde Electronics', style: TextStyle(fontFamily: 'Avenir', fontSize: 14, fontWeight: FontWeight.w500)),
                           
                            const SizedBox(width: 2),
                              Text('4.8', style: TextStyle(fontFamily: 'Avenir', fontSize: 14, fontWeight: FontWeight.w500)),
                               const SizedBox(width: 10),
                            SvgPicture.asset('Assets/Icons/Vector.svg'),
                          ],
                        ),
                         const SizedBox(height: 4),
                          Text('\$319.00', style: TextStyle(fontFamily: 'Avenir', fontSize: 16, fontWeight: FontWeight.w800, color: txt3)),
                      
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: bord2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 80,
                        width: 105,
                        decoration: BoxDecoration(
                          color: shade,
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Image.asset('Assets/Images/la.png'),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Item Name', style: TextStyle(fontFamily: 'Avenir', fontSize: 16, fontWeight: FontWeight.w800)),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Text('Store Name', style: TextStyle(fontFamily: 'Avenir', fontSize: 14, fontWeight: FontWeight.w500)),
                         SizedBox(width: 4,),
                            const SizedBox(width: 2),
                            const Text('4.8', style: TextStyle(fontFamily: 'Avenir', fontSize: 14, fontWeight: FontWeight.w500)),
                               const SizedBox(width: 10),
                            SvgPicture.asset('Assets/Icons/Vector.svg'),
                          ],
                        ),
                         const SizedBox(height: 4),
                           Text('\$319.00', style: TextStyle(fontFamily: 'Avenir', fontSize: 16, fontWeight: FontWeight.w800, color: txt3)),
                      
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: 
      SizedBox(
        height: 70,
        width: 70,
        child: 
        
      FloatingActionButton(
        onPressed: () {
        
        },
        child:  SvgPicture.asset('Assets/Icons/sc.svg', height: 24,width: 24,),
        backgroundColor: Colors.black,
      
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
          
        ),
      ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
