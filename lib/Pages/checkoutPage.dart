import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
 
import 'package:storeui/Pages/widgets/appbar.dart';
import 'donePage.dart';

//Cart page=> checkout and then the donePage
class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  double subTotal = 248.00;
  double shippingCost = 50.00;

  int selectedPaymentIndex1 = -1; // Initialize with an invalid index

  double getTotal() {
    return subTotal + shippingCost;
  }

  void selectPaymentOption(int index) {
    setState(() {
      selectedPaymentIndex1 = index;
    });
  }

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Checkout",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Avenir',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Payment',
                    style: TextStyle(
                      color: Color.fromARGB(255, 145, 145, 145),
                      fontFamily: 'Avenir',
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              PaymentOption(
                index: 0,
                selectedPaymentIndex2: selectedPaymentIndex1,
                onTap: selectPaymentOption,
                imagePath: "Assets/Images/visa.png",
                bankName: "Abbyn Bank",
                cardEnding: "**** 8910",
              ),
              const SizedBox(height: 20),
              PaymentOption(
                index: 1,
                selectedPaymentIndex2: selectedPaymentIndex1,
                onTap: selectPaymentOption,
                imagePath: "Assets/Images/mastercard.png",
                bankName: "Hansi Bank",
                cardEnding: "**** 1234",
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "SHIPPING INFORMATION",
                style: TextStyle(
                    fontFamily: 'Avenir',
                    color: Color.fromARGB(255, 168, 168, 168),
                    fontSize: 16,
                    fontWeight: FontWeight.w100),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("Assets/Images/maps.png"),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Address",
                      style: TextStyle(
                          fontFamily: 'Avenir',
                          color: Color.fromARGB(255, 168, 168, 168),
                          fontSize: 14,
                          fontWeight: FontWeight.w100),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "6391 Elgin St.Celina, Delaware 10299",
                      style: TextStyle(
                          fontFamily: 'Avenir',
                          color: Color.fromARGB(255, 17, 17, 17),
                          fontSize: 16,
                          fontWeight: FontWeight.w100),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Phone number",
                      style: TextStyle(
                          fontFamily: 'Avenir',
                          color: Color.fromARGB(255, 168, 168, 168),
                          fontSize: 14,
                          fontWeight: FontWeight.w100),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "(480) 555-0103",
                      style: TextStyle(
                          fontFamily: 'Avenir',
                          color: Color.fromARGB(255, 17, 17, 17),
                          fontSize: 16,
                          fontWeight: FontWeight.w100),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Sub Total"),
                        const Spacer(),
                        Text(
                          "\$${subTotal.toStringAsFixed(2)}",
                          style: const TextStyle(
                            fontFamily: 'Avenir',
                            color: Color.fromARGB(255, 168, 168, 168),
                            fontSize: 14,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Shipping Cost"),
                        const Spacer(),
                        Text(
                          "\$${shippingCost.toStringAsFixed(2)}",
                          style: const TextStyle(
                            fontFamily: 'Avenir',
                            color: Color.fromARGB(255, 168, 168, 168),
                            fontSize: 14,
                            fontWeight: FontWeight.w100,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Total",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Text(
                          "\$${getTotal().toStringAsFixed(2)}",
                          style: const TextStyle(
                            fontFamily: 'Avenir',
                            color: Color.fromARGB(255, 168, 168, 168),
                            fontSize: 14,
                            fontWeight: FontWeight.w100,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DoneScreen()));
                },
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(206, 213, 91, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Checkout \$${getTotal().toStringAsFixed(2)} ",
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
        ),
      ),
    );
  }
}

class PaymentOption extends StatelessWidget {
  final int index;
  final int selectedPaymentIndex2;
  final ValueChanged<int> onTap;
  final String imagePath;
  final String bankName;
  final String cardEnding;

  const PaymentOption({
    required this.index,
    required this.selectedPaymentIndex2,
    required this.onTap,
    required this.imagePath,
    required this.bankName,
    required this.cardEnding,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = index == selectedPaymentIndex2;
    return GestureDetector(
      onTap: () => onTap(index),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 60,
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected
                ? const Color.fromARGB(255, 172, 255, 151)
                : Colors.black,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(imagePath),
              Text(
                bankName,
                style: const TextStyle(
                  color: Color.fromARGB(255, 145, 145, 145),
                  fontFamily: 'Avenir',
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                cardEnding,
                style: const TextStyle(
                  color: Color.fromARGB(255, 145, 145, 145),
                  fontFamily: 'Avenir',
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              if (isSelected) SvgPicture.asset("Assets/Images/green.svg"),
            ],
          ),
        ),
      ),
    );
  }
}
