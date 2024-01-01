import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en_US": {
          "email_hint": "Enter Email",
          "internet_exception": "Internet not available",
          "general_exception":
              "We are unable to process your request at this time. Please try again later.",
          'welcome_back': "Welcome\n Back",
          'login': "Login",
          'email_hint': "Email",
          "password_hint": "Password",
          "empty_password": "Enter Password",
          "empty_email": "Enter Email",
          "email": "Email",
          "password": "Password",
          "error": "Error",
          "success": "Successful",
          "login_successful": "Login Successful",
        },
        "ur_PK": {
          "email_hint": "ای میل درج کریں",
          "ineternet_exception": "انٹرنیٹ دستیاب نہیں ہے",
          "general_exception":
              "ہم آپ کی درخواست کو اس وقت پراس کرنے میں ناکام ہیں۔ بعد میں دوبارہ کوشش کریں۔"
        },
        "np_NP": {
          "email_hint": "ईमेल प्रविष्ट गर्नुहोस्",
          "ineternet_exception": "इन्टरनेट उपलब्ध छैन",
          "general_exception":
              "हामी तपाईंको अनुरोध प्रसेस गर्न सक्दैनौं। कृपया पछि प्रयास गर्नुहोस्।"
        },
      };
}
