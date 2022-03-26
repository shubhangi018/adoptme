
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animaladopt/project_imports.dart';

class ImageStrings{

  ImageStrings._();

  static String logo = 'assets/PNG/logo.png';
  static String splashBG = 'assets/JPG/splashscreen_bg.jpg';
  static String loginRegisterBG = 'assets/JPG/loginRegister_bg.jpg';
  static String cat = 'assets/PNG/cat.png';
  static String dog = 'assets/PNG/dog.png';

}

class Strings{

  Strings._();

  static String login = 'Login';
  static String register = 'Register';
  static String email = 'Email';
  static String password = 'Password';
  static String fullName = 'FullName';
  static String phoneNumber = 'Phone Number';
  static String rEmail = 'Email is Required';
  static String rPassword = 'Password is Required';
  static String rPhoneNumber = 'PhoneNumber is Required';
  static String rFullName = 'FullName is required';
  static String eEmail = 'Enter valid email';
  static String ePassword = 'Enter a password between 8 and 15 characters';
  static String ePhoneNumber = 'Enter a 10-digit Number';
  static String registration = 'Not a User? Create Account';
  static String signIn = 'Already a User?';
  static String aboutUs = 'AboutUs';
  static String pawFriend = 'Find your PawFriend';
  static String logout = 'LogOut';
  static String adopt = 'Adopt';

}

///This class will contain all the icons required during building project
class ProjectIcons {
  ProjectIcons._();

  static const loginIcon = Icon(Icons.login);
  static const emailIcon = Icon(Icons.email_outlined);
  static const prefixPasswordIcon = Icon(Icons.vpn_key_outlined);
  static const fullNameIcon = Icon(Icons.people_alt_rounded);
  static const phoneNumberIcon = Icon(Icons.phone);
  static const popIcon = Icon(Icons.arrow_back_ios_rounded);
  static const downloadIcon = Icon(Icons.download_rounded);
  static const detailsIcon = Icon(Icons.people_alt_rounded);
  static const logOutIcon = Icon(Icons.logout);
  static const uploadIcon = Icon(Icons.arrow_circle_up);
  static const addIcon = Icon(Icons.add_circle_outline);
  static const removeIcon = Icon(Icons.remove_circle_outline);
  static const female = Icon(Icons.female_outlined);
  static const male = Icon(Icons.male_outlined);
}

///This class will contain all the colors required during building project
class ProjectColors {
  ProjectColors._();

  static const loginRegisterButton = Color.fromRGBO(179, 36, 81, 1);
  static const errorColor = Color.fromRGBO(255, 0, 0, 1);
  static const formFieldBordersFocused = Color.fromRGBO(222, 9, 75, 1);
  static const formFieldBordersActive = Color.fromRGBO(240, 48, 108, 1);
  static const primaryT = Color.fromRGBO(217, 25, 25, 0.81);
  static const secondaryT = Color.fromRGBO(222, 179, 67, 0.81);
  static const primary = Colors.deepOrange; //(217, 25, 25, 1);
  static const secondary = Colors.red; //(222, 179, 67, 1);

}

///Gradient with Transparency value
LinearGradient gradientLayoutPW = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      ProjectColors.formFieldBordersFocused,
      ProjectColors.formFieldBordersActive
    ]
);