import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
 
import 'package:storeui/Pages/widgets/appbar.dart';

class ExploresWorkspace extends StatelessWidget {
  const ExploresWorkspace({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leftIconPath: "Assets/Images/arrow-left.svg",
        title: "Explores Workspace",
        onLeftIconTap: () {
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const TextField(
                decoration: InputDecoration(
                  hintText: 'What do you do?',
                  hintStyle: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 13,
                    fontWeight: FontWeight.w100,
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.filter_list),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey, // color when not focused
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue, // color when focused
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 155,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 22, 22, 22),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      bottom: 0,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                        child: Image.asset(
                          'Assets/Images/speaker.png',
                          width: MediaQuery.of(context).size.width * 0.53,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Featured Workspace',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Avenir',
                              fontSize: 12,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Professional Gaming \nAccessories',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Avenir',
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const Text(
                                'View space',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 179, 255, 128),
                                  decoration: TextDecoration.underline,
                                  decorationColor:
                                      Color.fromARGB(255, 179, 255, 128),
                                  decorationThickness: 2,
                                  fontFamily: 'Avenir',
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              const SizedBox(width: 5),
                              SvgPicture.asset(
                                'Assets/Images/arrow-right.svg',
                                color: const Color.fromARGB(255, 179, 255, 128),
                                height: 12, // Adjust the size as needed
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Browse Workspaces',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Avenir',
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Row(children: [
                    const Text(
                      'See more',
                      style: TextStyle(
                        color: Color.fromARGB(255, 145, 145, 145),
                        fontFamily: 'Avenir',
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(width: 5),
                    SvgPicture.asset("Assets/Images/arrows-right.svg"),
                  ])
                ],
              ),
              const SizedBox(height: 15),
              Container(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5, // Adjusted to match the length of categories
                  itemBuilder: (context, index) {
                    final List<String> categories = [
                      'Show All',
                      'Developer',
                      'Podcast Creator',
                      'Filmmaking',
                      'Photography',
                    ];
                    return Container(
                      width: 90,
                      height: 30,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: index == 0
                            ? const Color.fromARGB(255, 22, 22, 22)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          categories[index],
                          style: TextStyle(
                            color: index == 0
                                ? const Color.fromARGB(255, 247, 247, 247)
                                : Colors.black,
                            fontFamily: 'Avenir',
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Avenir',
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                      ),
                      children: [
                        TextSpan(text: "What "),
                        TextSpan(
                          text: "YouTubers ",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 131, 86),
                          ),
                        ),
                        TextSpan(text: 'Search for')
                      ],
                    ),
                  ),
                  Row(children: [
                    const Text(
                      'See more',
                      style: TextStyle(
                        color: Color.fromARGB(255, 145, 145, 145),
                        fontFamily: 'Avenir',
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(width: 5),
                    SvgPicture.asset("Assets/Images/arrows-right.svg"),
                  ])
                ],
              ),
              const SizedBox(height: 20),
              Container(
                width: 230,
                height: 235,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 238, 238, 238),
                    borderRadius: BorderRadius.circular(17)),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Stack(
                    alignment: Alignment
                        .topCenter, // Aligns children along the top center
                    children: [
                      Positioned(
                        top: 0, // Positions the microphone at the very top
                        child: Image.asset(
                          "Assets/Images/microphone.png",
                          height: 150,
                          width: 150,
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right:
                            0, // Positions the wishlist icon at the far right
                        child: SvgPicture.asset(
                          "Assets/Images/wishlist.svg",
                          height: 30,
                          width: 30,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: 200,
                          height: 90,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(17),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "USB Microphone",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Avenir',
                                      fontWeight: FontWeight.w100,
                                      color:
                                          const Color.fromARGB(255, 0, 0, 0)),
                                ),
                                Text(
                                  "USD 87.00",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Avenir',
                                      fontWeight: FontWeight.w100,
                                      color: Color.fromARGB(255, 255, 131, 86)),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      '4.8',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
