class ValidationUtil{

  static bool mobileValidation({required String mobile}) {
    return mobile.length == 10 ;
  }
  static bool emailValidation({required String email}) {
   final RegExp emailRegex = RegExp(r'^\w+@\w+\.\w{2,}$');
    return emailRegex.hasMatch(email);
  }
  static bool passwordValidation({required String password}) {
    final RegExp passwordRegex = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$');
    return passwordRegex.hasMatch(password);
  }

}