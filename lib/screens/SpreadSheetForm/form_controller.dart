import 'dart:convert' as convert;
import 'package:awesome_ui/screens/SpreadSheetForm/user_model.dart';
import 'package:http/http.dart' as http;


/// FormController is a class which does work of saving FeedbackForm in Google Sheets using 
/// HTTP GET request on Google App Script Web URL and parses response and sends result callback.
class FormController {
  
  // Google App Script Web URL.
  static const String URL = "https://script.google.com/macros/s/AKfycbzi0oumv9PdDXgd0H6xGkkOYYgpDMwxZEOp6cc6xONwlHVlxPWIKFA6FI1xOfIIxQ51/exec";
  
  // Success Status Message
  static const STATUS_SUCCESS = "SUCCESS";

  /// Async function which saves feedback, parses [feedbackForm] parameters
  /// and sends HTTP GET request on [URL]. On successful response, [callback] is called.
   void submitForm(
      UserModel feedbackForm, void Function(String) callback) async {
    try {
      await http.post(Uri.parse(URL), body: feedbackForm.toJson()).then((response) async {
        if (response.statusCode == 302) {
          var url = response.headers['location'];
          await http.get(Uri.parse(url!)).then((response) {
            callback(convert.jsonDecode(response.body)['status']);
          });
        } else {
          callback(convert.jsonDecode(response.body)['status']);
        }
      });
    } catch (e) {
      print(e);
    }
  }
}