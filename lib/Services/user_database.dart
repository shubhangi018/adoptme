
import 'package:animaladopt/project_imports.dart';


class DataBaseServices {

  DataBaseServices({required this.uid});

  final String uid;

  ///This variable will contain User Collection reference from Firebase Cloud_Storage
  ///CollectionReference has a type of map where its key is String and value is dynamic
  ///FirebaseFirestore.instance.collection('users'); will generate a collection named 'users'
  ///where all the User UID in the form of documents will be added if not present already.
  final CollectionReference<Map<String, dynamic>> userCollection =
  FirebaseFirestore.instance.collection('users');

  ///User data will be added in new doc where doc is UID of the newly registered user
  ///Values will be in the form of Map Datatype provided from RegistrationPage
  Future storeUserData(
      String fullName, String email, int phoneNumber) async {
    return await userCollection.doc(uid).set({
      'FullName': fullName,
      'Email': email,
      'Phone-Number': phoneNumber
    });
  }

}