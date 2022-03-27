import 'package:animaladopt/project_imports.dart';

class PetDatabase{

  PetDatabase({required this.pet,required this.petName});

  final String pet;
  final String petName;

  Future storeAdoptData(
      String fullName, String email, int phoneNumber,bool hasPet, bool hasHome, bool hasExp, bool agreed) async {
    final CollectionReference<Map<String, dynamic>> petCollection =
    FirebaseFirestore.instance.collection(pet);
    return await petCollection.doc(petName).set({
      'FullName': fullName,
      'Email': email,
      'Phone-Number': phoneNumber,
      'hasPet': hasPet,
      'hasHome': hasHome,
      'hasExp' : hasExp,
      'agreedToForm': agreed
    });
  }





}