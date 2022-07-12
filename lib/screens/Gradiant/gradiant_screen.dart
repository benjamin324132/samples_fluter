import 'package:flutter/material.dart';

class GradiantScreen extends StatefulWidget {
  const GradiantScreen({Key? key}) : super(key: key);

  @override
  State<GradiantScreen> createState() => _GradiantScreenState();
}

class _GradiantScreenState extends State<GradiantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                child: Center(child: Text("Apple Pay")),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            height: 50.0,
            width: 320,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.pinkAccent,
                Colors.purple,
              ]),
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Spacer(),
              RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                padding: const EdgeInsets.all(0.0),
                child: Ink(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        
                        Colors.pinkAccent,
                        Colors.deepPurpleAccent,
                       
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: Container(
                    constraints: const BoxConstraints(
                        minWidth: 320.0,
                        minHeight: 50.0), // min sizes for Material buttons
                    alignment: Alignment.center,
                    child: const Text(
                      'Create Deposit',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
