import 'package:animaladopt/SharedWidgets/pet_info.dart';

class PetDataInfo{

  List<Map<String, dynamic>> files = [];

  List<Map<String,dynamic>> cat(){
    files = [
      {
        'name': PetName.c_1Name,
        'gender': PetGender.c_1Gender,
        'age': PetAge.c_1Age,
        'info': PetInfo.c_1Info,
        'location': PetLocation.c_1Location,
        'url': PetURL.c_1URL
      },
      {
        'name': PetName.c_2Name,
        'gender': PetGender.c_2Gender,
        'age': PetAge.c_2Age,
        'info': PetInfo.c_2Info,
        'location': PetLocation.c_2Location,
        'url': PetURL.c_2URL
      },
      {
        'name': PetName.c_3Name,
        'gender': PetGender.c_3Gender,
        'age': PetAge.c_3Age,
        'info': PetInfo.c_3Info,
        'location': PetLocation.c_3Location,
        'url': PetURL.c_3URL
      },
      {
        'name': PetName.c_4Name,
        'gender': PetGender.c_3Gender,
        'age': PetAge.c_4Age,
        'info': PetInfo.c_4Info,
        'location': PetLocation.c_4Location,
        'url': PetURL.c_4URL
      },
      {
        'name': PetName.c_5Name,
        'gender': PetGender.c_5Gender,
        'age': PetAge.c_5Age,
        'info': PetInfo.c_5Info,
        'location': PetLocation.c_5Location,
        'url': PetURL.c_5URL
      }
    ];

    return files;
  }

  List<Map<String,dynamic>> dog(){
    files = [
      {
        'name': PetName.d_1Name,
        'gender': PetGender.d_1Gender,
        'age': PetAge.d_1Age,
        'info': PetInfo.d_1Info,
        'location': PetLocation.d_1Location,
        'url': PetURL.d_1URL
      },
      {
        'name': PetName.d_2Name,
        'gender': PetGender.d_2Gender,
        'age': PetAge.d_2Age,
        'info': PetInfo.d_2Info,
        'location': PetLocation.d_2Location,
        'url': PetURL.d_2URL
      },
      {
        'name': PetName.d_3Name,
        'gender': PetGender.d_3Gender,
        'age': PetAge.d_3Age,
        'info': PetInfo.d_3Info,
        'location': PetLocation.d_3Location,
        'url': PetURL.d_3URL
      },
      {
        'name': PetName.d_4Name,
        'gender': PetGender.d_4Gender,
        'age': PetAge.d_4Age,
        'info': PetInfo.d_4Info,
        'location': PetLocation.d_4Location,
        'url': PetURL.d_4URL
      },
      {
        'name': PetName.d_5Name,
        'gender': PetGender.d_5Gender,
        'age': PetAge.d_5Age,
        'info': PetInfo.d_5Info,
        'location': PetLocation.d_5Location,
        'url': PetURL.d_5URL
      }
    ];

    return files;
  }
}

