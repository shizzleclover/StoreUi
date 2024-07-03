import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
 
import 'package:storeui/Pages/widgets/appbar.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leftIconPath: "Assets/Images/arrow-left.svg",
        title: "Your Orders",
        onLeftIconTap: () {
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search product name',
                  hintStyle: const TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 13,
                    fontWeight: FontWeight.w100,
                    color: Color.fromARGB(255, 197, 197, 197),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SvgPicture.asset(
                      'Assets/Images/setting.svg',
                      color: Colors.grey,
                      height: 5,
                    ),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey, // color when not focused
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue, // color when focused
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const OrderItem(
                imagePath: "Assets/Images/buds.png",
                deliveryDate: "Delivered on December 30",
                productName:
                    "Apple Airpods Pro 2nd Gen \nwith Wireless Charging",
                orderNumber: "#09567",
              ),
              const SizedBox(height: 20),
              const OrderItem(
                imagePath:
                    "Assets/Images/cherryHeadphone.png", // change to actual image path
                deliveryDate: "Delivered on January 10",
                productName: "Wall Rustic Ash Floating Book \nShelf",
                orderNumber: "#09568",
              ),
              const SizedBox(height: 20),
              const OrderItem(
                imagePath:
                    "Assets/Images/shelf.png", // change to actual image path
                deliveryDate: "Delivered on January 15",
                productName: "Cherry wood headphone stand",
                orderNumber: "#09569",
              ),
              const SizedBox(height: 20),
              const OrderItem(
                imagePath:
                    "Assets/Images/ps5.png", // change to actual image path
                deliveryDate: "Delivered on February 1",
                productName: "Play Station 5 PS5 Console \n(Disc version)",
                orderNumber: "#09570",
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const OvalBorder(),
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: const Color.fromARGB(255, 34, 34, 34),
        child: SvgPicture.asset(
          "Assets/Images/shopping-cart.svg",
          color: Colors.white,
          height: 28,
          width: 28,
        ),
      ),
    );
  }
}

class OrderItem extends StatelessWidget {
  final String imagePath;
  final String deliveryDate;
  final String productName;
  final String orderNumber;

  const OrderItem({
    required this.imagePath,
    required this.deliveryDate,
    required this.productName,
    required this.orderNumber,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        color: Color.fromRGBO(241, 241, 241, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  imagePath,
                  width: 95,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      deliveryDate,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      productName,
                      style: const TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  orderNumber,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 255, 131, 86),
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color.fromARGB(255, 110, 110, 110),
                ),
              ),
              child: const Center(
                child: Text(
                  "View Item",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Avenir',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
