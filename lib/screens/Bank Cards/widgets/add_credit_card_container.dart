import 'dart:ui';
import 'package:awesome_ui/screens/Bank%20Cards/utils/colors.dart';
import 'package:flutter/material.dart';

class AddCreditCardContainer extends StatelessWidget {
  const AddCreditCardContainer({
    Key? key,
    required this.percent,
    required this.height,
    required this.width,
    required this.showItems,
  }) : super(key: key);

  final double percent;
  final double height;
  final double width;
  final bool showItems;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return OverflowBox(
      maxHeight: size.height,
      maxWidth: size.width + 10,
      alignment: Alignment.lerp(Alignment(0, .385), Alignment(-.52, 0), percent)!,
      child: Container(
        height: lerpDouble(size.height + 100, height, percent),
        width: lerpDouble(size.width + 10, width, percent),
        decoration: BoxDecoration(
          color: BankColors.kDarkBlue,
          borderRadius: BorderRadius.circular(30 * percent),
        ),
        child: AnimatedSwitcher(
          duration: kThemeChangeDuration,
          child: showItems
              ? Column(
                  children: [
                    Expanded(
                      flex: 5,
                      child: _HeaderAddCreditCard(),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        'Your card number',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: BankColors.kLessDarkBlue,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisExtent: 100,
                          childAspectRatio: 1,
                        ),
                        itemCount: 12,
                        itemBuilder: (context, index) {
                          final style = TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 24);

                          switch (index) {
                            case 9:
                              return const Icon(
                                Icons.qr_code_sharp,
                                color: Colors.white,
                                size: 28,
                              );
                            case 10:
                              return Center(child: Text('0', style: style));
                            case 11:
                              return const Icon(
                                Icons.backspace_outlined,
                                color: Colors.white,
                                size: 28,
                              );
                          }
                          return Center(
                            child: Text(
                              '${index + 1}',
                              style: style,
                            ),
                          );
                        },
                      ),
                    ),
                    const Spacer(flex: 2)
                  ],
                )
              : const SizedBox(),
        ),
      ),
    );
  }
}

class _HeaderAddCreditCard extends StatelessWidget {
  const _HeaderAddCreditCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(40.0),
      padding: const EdgeInsets.symmetric(horizontal: 40),
      decoration: BoxDecoration(color: BankColors.kSecondaryDarkBlue, borderRadius: BorderRadius.circular(30)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Icon(
                Icons.credit_card,
                color: Colors.white,
                size: 20,
              ),
              const SizedBox(width: 10),
              Text(
                'Credit Card',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 14),
              )
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.credit_card,
                color: Colors.white,
                size: 20,
              ),
              const SizedBox(width: 10),
              Text(
                'Open an account',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 14),
              ),
              const Spacer(),
              Align(
                widthFactor: .2,
                child: CircleAvatar(
                  radius: 12,
                ),
              ),
              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.credit_card,
                  size: 14,
                  color: BankColors.kLessDarkBlue,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
