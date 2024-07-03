import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
 
import 'package:storeui/Pages/widgets/appbar.dart';

//from scanning to this page Scanned Item page

class ScannedItemScreen extends StatelessWidget {
  const ScannedItemScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leftIconPath: "Assets/Images/arrow-left.svg",
        title: "Scanned Item Info",
        background: const Color.fromRGBO(241, 241, 241, 1),
        onLeftIconTap: () {
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(241, 241, 241, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  "Assets/Images/lamp.png",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Blush & Bass Desk Lamp",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "Good for Developer  ",
                            style: TextStyle(
                              color: Color.fromRGBO(75, 179, 71, 1),
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SvgPicture.asset("Assets/Images/tick.svg")
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Description",
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            "Change",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 255, 131, 86)),
                          ),
                        ],
                      ),
                      Text(
                        "This LED desk lamp is a great addition to any workspace and ver essential for developers, thanks to its compact size and numerous lighting settings.",
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Add a price range",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 255, 255, 255)),
                  ),
                  Positioned(
                    left: 70,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 255, 131, 86),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$10",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      "\$2k",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 255, 131, 86)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              GestureDetector(
                /*    onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OrderScreen()),
                    );
                  }, */
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(206, 213, 91, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "Suggest item",
                      style: TextStyle(
                        color: Color.fromARGB(255, 19, 19, 19),
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
    // TODO: implement build
  }
}
