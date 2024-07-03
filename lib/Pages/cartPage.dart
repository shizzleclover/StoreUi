import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// ignore: unused_import
import 'package:flutter_svg/flutter_svg.dart';
 
import 'package:storeui/Pages/widgets/appbar.dart';
import 'checkoutPage.dart';

//Cart page leads to the checkout and vice versa
class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leftIconPath: "Assets/Images/arrow-left.svg",
        title: "",
        onLeftIconTap: () {
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your Cart",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Avenir',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '3 items',
                    style: TextStyle(
                      color: Color.fromARGB(255, 145, 145, 145),
                      fontFamily: 'Avenir',
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const CartItem(
                imagePath: "Assets/Images/officeChair.png",
                itemName: "Furniture Manila Adjustable \n office chair",
                itemPrice: "USD 87.00",
              ),
              const SizedBox(height: 20),
              const CartItem(
                imagePath:
                    "Assets/Images/jbl.png", // Replace with actual image path
                itemName: "JBL Link Music wifi speaker",
                itemPrice: "USD 50.00",
              ),
              const SizedBox(height: 20),
              const CartItem(
                imagePath:
                    "Assets/Images/mouse.png", // Replace with actual image path
                itemName: "Logitech MX Master 25 \n wireless mouse",
                itemPrice: "USD 100.00",
              ),
              const SizedBox(
                height: 100,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Avenir',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '\$248.00',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 131, 86),
                          fontFamily: 'Avenir',
                          fontSize: 13,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CheckoutScreen()));
                    },
                    child: Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(206, 213, 91, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Proceed to Checkout",
                              style: TextStyle(
                                  fontFamily: 'Avenir',
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

class CartItem extends StatefulWidget {
  final String imagePath;
  final String itemName;
  final String itemPrice;

  const CartItem({
    required this.imagePath,
    required this.itemName,
    required this.itemPrice,
    super.key,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int quantity = 1;

  void _incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void _decrementQuantity() {
    setState(() {
      if (quantity > 1) {
        quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 221, 221, 221),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              widget.imagePath,
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.itemName,
                    style: const TextStyle(
                      fontFamily: 'Avenir',
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    widget.itemPrice,
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Avenir',
                      fontWeight: FontWeight.w100,
                      color: Color.fromARGB(255, 255, 131, 86),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: _decrementQuantity,
                        color: Colors.black,
                        iconSize: 20,
                      ),
                      Text(
                        '$quantity',
                        style: const TextStyle(
                          fontSize: 14,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: _incrementQuantity,
                        color: Colors.black,
                        iconSize: 20,
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          // Implement remove functionality here
                        },
                        child: Container(
                          width: 65,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              "Remove",
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.w100,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
