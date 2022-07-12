import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(0.05),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Boxicons.bx_chevron_left,
                                  size: 32,
                                )),
                            const Text(
                              "Payment",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Boxicons.bx_dots_horizontal_rounded,
                                  size: 26,
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Bag",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding: const EdgeInsets.all(2.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blueAccent.withOpacity(0.08)),
                              child: const Icon(
                                Boxicons.bx_plus,
                                color: Colors.blueAccent,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              child: Image.asset(
                                "assets/donout/donut_2.png",
                                height: 80,
                                width: 80,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              child: Image.asset(
                                "assets/donout/donut_3.png",
                                height: 80,
                                width: 80,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              child: Image.asset(
                                "assets/donout/donut_4.png",
                                height: 80,
                                width: 80,
                              ),
                            ),
                          ],
                        )
                      ],
                    )),
                const SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Address",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Change",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueAccent),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 110,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.black12.withOpacity(0.05),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(12))),
                            child: const Icon(Boxicons.bx_map_pin),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  "Home",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "798-662 St. Clarens Ave. Toronto ON M6H 3Xl, Canada",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black26),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Paymnet Method",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                            color: Colors.black12.withOpacity(0.05),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12))),
                        child: Row(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xff1A1F71),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              child: const Icon(
                                Boxicons.bxl_visa,
                                size: 50,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "Home",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    "8845 09567 2345 7634",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black26),
                                  ),
                                ],
                              ),
                            ),
                            const Icon(Boxicons.bx_chevron_right),
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Subtotal",
                      style: TextStyle(
                          color: Colors.black38, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "\$100.00",
                      style: TextStyle(
                          color: Colors.black38, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Shipping Cost",
                      style: TextStyle(
                          color: Colors.black38, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "\$2,447.00",
                      style: TextStyle(
                          color: Colors.black38, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Discount",
                      style: TextStyle(
                        color: Colors.greenAccent,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "\$100.00 ",
                      style: TextStyle(
                        color: Colors.greenAccent,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Divider(),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                           Text(
                            "Total",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                           Text(
                            "\$2,522.00",
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 130,
                      height: 60,
                      decoration: const BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius:
                              BorderRadius.all(Radius.circular(12))),
                      child: const Center(
                          child: Text(
                        "Pay",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
