
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animaladopt/project_imports.dart';

class ImageStrings{

  ImageStrings._();

  static String logo = 'assets/PNG/logo.png';
  static String splashBG = 'assets/JPG/splashscreen_bg.jpg';
  static String loginRegisterBG = 'assets/JPG/loginRegister_bg.jpg';
  static String cat = 'assets/PNG/cat.png';
  static String dog = 'assets/PNG/dog.png';
  static String finalImg = 'assets/PNG/pets.png';

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
  static String founder = 'Founder';
  static String location = 'Location';
  static String shelterName = 'Stray-Buddy';
  static String founderName = 'Mrs. Surekha Deshmukh';
  static String shelterEmail = 'straybuddy@gmail.com';
  static String founderNumber = '7738774846';
  static String shelterLocation = 'NKT Compound,Kisan nagar,Thane-W,Maharashtra,400604';
  static String shelterInfo = "Stray-Buddy is not just any regular animal shelter, here we treat and care our pets as our own children and find eligible pet parents for our lovely pets. We believe every living being has a right to live in peace and harmony and be treated with compassion. Rescue & Rehabilitation | Animal Right & Advocacy | Awareness among citizens for adoption of strays.\n'ALL GREAT & SMALL CREATURES, GOD MADE THEM ALL'";
  static String adoptionForm = 'Adoption Form';
  static String hasPet = 'Do you have any pet with you right now?';
  static String hasOwnHome = 'Do you have your own house?';
  static String hasExp = 'Do you have any prior experience of handling pet?';
  static String agreed = 'By Clicking this you will accept all the\nterms & conditions of taking care of a pet';
  static String yesRadio = 'Yes';
  static String noRadio = 'No';
  static String submitForm = 'Submit';
  static String check = 'Please check the box!';
  static String petLocation = 'Stray-Buddy shelter, KisanNagar,\nThane, Maharashtra';
  static String finalMsg = 'ThankYou! For Adoption!!\nWe will contact you soon...';

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
  static const detailsIcon = Icon(Icons.people_alt_rounded);
  static const logOutIcon = Icon(Icons.logout);
  static const female = Icon(Icons.female_outlined);
  static const male = Icon(Icons.male_outlined);
  static const location = Icon(Icons.location_on_outlined);
  static const shelter = Icon(Icons.home_outlined);
  static const submit = Icon(Icons.done_all_outlined);

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