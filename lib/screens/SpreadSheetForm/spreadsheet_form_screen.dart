
import 'package:awesome_ui/screens/SpreadSheetForm/form_controller.dart';
import 'package:awesome_ui/screens/SpreadSheetForm/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SpreadSheetForm extends StatefulWidget {
  const SpreadSheetForm({super.key});

  @override
  State<SpreadSheetForm> createState() => _SpreadSheetFormState();
}

class _SpreadSheetFormState extends State<SpreadSheetForm> {
 // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  // TextField Controllers
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileNoController = TextEditingController();
  TextEditingController feedbackController = TextEditingController();

  // Method to Submit Feedback and save it in Google Sheets
  void _submitForm() {
    // Validate returns true if the form is valid, or false
    // otherwise.
    if (_formKey.currentState!.validate()) {
      // If the form is valid, proceed.
      UserModel feedbackForm = UserModel(
          nameController.text,
          emailController.text);

      FormController formController = FormController();

      //_showSnackbar("Submitting Feedback");

      // Submit 'feedbackForm' and save it in Google Sheets.
      formController.submitForm(feedbackForm, (String response) {
        print("Response: $response");
        if (response == FormController.STATUS_SUCCESS) {
          // Feedback is saved succesfully in Google Sheets.
          //_showSnackbar("Feedback Submitted");
          nameController.text = "";
          emailController.text ="";
          setState(() {
            
          });
        } else {
          // Error Occurred while saving data in Google Sheets.
          //_showSnackbar("Error Occurred!");
        }
      });
    }
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,  
      body: SafeArea(
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Form(
                  key: _formKey,
                  child:
                    Padding(padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextFormField(
                          controller: nameController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Valid Name';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Name'
                          ),
                        ),
                        TextFormField(
                          controller: emailController,
                          validator: (value) {
                            if (!value!.contains("@")) {
                              return 'Enter Valid Email';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Email'
                          ),
                        ),
        
                      ],
                    ),
                  ) 
                ),
                ElevatedButton(
                  onPressed:_submitForm,
                  child: Text('Submit Feedback'),
                ),
              ],
            ),
          ),
      ),
    );
  }
}