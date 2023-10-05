import 'package:awesome_ui/screens/Form/components/card_strings.dart';
import 'package:awesome_ui/screens/Form/components/card_utilis.dart';
import 'package:awesome_ui/screens/Form/components/input_formatters.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'components/card_type.dart';
import 'constants.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
   TextEditingController cardNumberController = TextEditingController();
  var _formKey = GlobalKey<FormState>();
  var _paymentCard = PaymentCard();
  var _autoValidateMode = AutovalidateMode.disabled;

  @override
  void initState() {
    super.initState();
    _paymentCard.type = CardType.Others;
    cardNumberController.addListener(_getCardTypeFrmNumber);
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is removed from the Widget tree
    cardNumberController.removeListener(_getCardTypeFrmNumber);
    cardNumberController.dispose();
    super.dispose();
  }

  void _getCardTypeFrmNumber() {
    String input = CardUtils.getCleanedNumber(cardNumberController.text);
    CardType cardType = CardUtils.getCardTypeFrmNumber(input);
    setState(() {
      _paymentCard.type = cardType;
    });
  }

  void _validateInputs() {
    final FormState form = _formKey.currentState!;
    if (!form.validate()) {
      setState(() {
        _autoValidateMode =
            AutovalidateMode.always; // Start validating on every change.
      });
      _showInSnackBar('Please fix the errors in red before submitting.');
    } else {
      form.save();
      // Encrypt and send send payment details to payment gateway
      _showInSnackBar('Payment card is valid');
      print(_paymentCard);
    }
  }

  void _showInSnackBar(String value) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(value),
      duration: const Duration(seconds: 3),
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData(
          primaryColor: primaryColor,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
            titleTextStyle:
                TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: Color(0xFFF8F8F9),
            hintStyle: TextStyle(
              color: Color(0xFFB8B5C3),
            ),
            border: defaultOutlineInputBorder,
            enabledBorder: defaultOutlineInputBorder,
            focusedBorder: defaultOutlineInputBorder,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: primaryColor,
              minimumSize: const Size(double.infinity, 56),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
            ),
          ),
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
              primary: Colors.black,
              minimumSize: const Size(double.infinity, 56),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
            ),
          ),
        ),
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Credit card form'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              // const Spacer(),
              Form(
                key: _formKey,
                autovalidateMode: _autoValidateMode,
                child: Column(
                  children: [
                    TextFormField(
                      controller: cardNumberController,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(16),
                       CardNumberInputFormater()
                      ],
                      decoration:const InputDecoration(
                        hintText: "Card number",
                        suffixIcon: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          //child: CardUtils.getCardIcon(_paymentCard.type),
                        ),
                        prefixIcon: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(Boxicons.bx_credit_card),
                        ),
                      ),
                      onSaved: (String? value) {
                        _paymentCard.number =
                            CardUtils.getCleanedNumber(value!);
                      },
                      validator: CardUtils.validateCardNum,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration:const InputDecoration(
                        hintText: "Holder name",
                        filled: true,
                        prefixIcon: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(Boxicons.bx_user),
                        ),
                      ),
                      onSaved: (String? value) {
                        _paymentCard.name = value;
                      },
                      keyboardType: TextInputType.text,
                      validator: (String? value) =>
                          value!.isEmpty ? Strings.fieldReq : null,
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(4),
                            ],
                            decoration:const InputDecoration(
                              hintText: "CVV",
                              prefixIcon: Padding(
                                padding:
                                     EdgeInsets.symmetric(horizontal: 10),
                                child: Icon(Boxicons.bx_grid),
                              ),
                            ),
                            validator: CardUtils.validateCVV,
                            keyboardType: TextInputType.number,
                            onSaved: (value) {
                              _paymentCard.cvv = int.parse(value!);
                            },
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: TextFormField(
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(4),
                              CardMonthInputFormatter()
                            ],
                            decoration:const InputDecoration(
                              hintText: "MM/YY",
                              prefixIcon: Padding(
                                padding:
                                     EdgeInsets.symmetric(horizontal: 10),
                                child: Icon(Boxicons.bx_calendar),
                              ),
                            ),
                            validator: CardUtils.validateDate,
                            keyboardType: TextInputType.number,
                            onSaved: (value) {
                              List<int> expiryDate =
                                  CardUtils.getExpiryDate(value!);
                              _paymentCard.month = expiryDate[0];
                              _paymentCard.year = 2000 + expiryDate[1];
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: ElevatedButton(
                  onPressed: _validateInputs,
                  child: const Text('Pay Now'),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}

const OutlineInputBorder defaultOutlineInputBorder = OutlineInputBorder(
  borderSide: BorderSide.none,
  borderRadius: BorderRadius.all(Radius.circular(12)),
);
