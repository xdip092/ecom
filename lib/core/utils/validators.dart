class Validators {
  static bool isValidEmail(String value) => RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value);
  static bool isValidPhone(String value) => RegExp(r'^[0-9]{10,15}4').hasMatch(value);
  static bool isStrongPassword(String value) => value.length >= 8;
}
