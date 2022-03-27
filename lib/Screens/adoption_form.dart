
// ignore_for_file: use_key_in_widget_constructors

import 'package:animaladopt/project_imports.dart';
import 'package:form_field_validator/form_field_validator.dart';

class AdoptionForm extends StatefulWidget {

  @override
  State<AdoptionForm> createState() => _AdoptionFormState();
}

class _AdoptionFormState extends State<AdoptionForm> {

  final _formkey = GlobalKey<FormState>();
  String email = '';
  int phoneNumber = 0;
  String fullName = '';
  dynamic hasAnyPet = false;
  dynamic hasOwnHome = false;
  dynamic hasExp = false;
  dynamic agreed = false;

  @override
  Widget build(BuildContext context) {

    final values = ModalRoute.of(context)!.settings.arguments as List;
    final String pet = values[0];
    final Map<String,dynamic> selectedPet = values[1];

    return Scaffold(
      body: SizedBox(
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().screenHeight,
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[

              Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 40.h),
                    child: Text(
                      Strings.adoptionForm,
                      style: TextStyle(
                          fontSize: 36.sp
                      ),
                    ),
                  ),
              ),

              Form(
                  key: _formkey,
                  child: Stack(
                    children: <Widget>[

                      Padding(
                        padding: EdgeInsets.only(top: 105.h, left: 30.w, right: 30.w),
                        child: SizedBox(
                          width: 300.w,
                          child: TextFormField(
                            decoration: textInputDecoration.copyWith(
                                hintText: Strings.fullName,
                                prefixIcon: ProjectIcons.fullNameIcon,
                                errorStyle: TextStyle(
                                    fontSize: 12.sp,
                                    height: 1.h,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 1.sp
                                      ..color = ProjectColors.errorColor)),
                            validator: RequiredValidator(errorText: Strings.rFullName),
                            onChanged: (val) {
                              setState(() => fullName = val);
                            },
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 175.h, left: 30.w, right: 30.w),
                        child: SizedBox(
                          width: 300.w,
                          child: TextFormField(
                            decoration: textInputDecoration.copyWith(
                                hintText: Strings.email,
                                prefixIcon: ProjectIcons.emailIcon,
                                errorStyle: TextStyle(
                                    fontSize: 12.sp,
                                    height: 1.h,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 1.sp
                                      ..color = ProjectColors.errorColor)),
                            validator: MultiValidator([
                              RequiredValidator(errorText: Strings.rEmail),
                              EmailValidator(errorText: Strings.eEmail),
                            ]),
                            onChanged: (val) {
                              setState(() => email = val);
                            },
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 245.h, left: 30.w, right: 30.w),
                        child: SizedBox(
                          width: 300.w,
                          child: TextFormField(
                            decoration: textInputDecoration.copyWith(
                              hintText: Strings.phoneNumber,
                              prefixIcon: ProjectIcons.phoneNumberIcon,
                              errorStyle: TextStyle(
                                  fontSize: 12.sp,
                                  height: 1.h,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 1.sp
                                    ..color = ProjectColors.errorColor),
                            ),
                            keyboardType: TextInputType.number,
                            validator: MultiValidator([
                              RequiredValidator(errorText: Strings.rPhoneNumber),
                              LengthRangeValidator(
                                  min: 10, max: 10, errorText: Strings.ePhoneNumber),
                            ]),
                            onChanged: (val) {
                              setState(() => val.isNotEmpty
                                  ? phoneNumber = int.parse(val)
                                  : phoneNumber = int.parse('0'));
                            },
                          ),
                        ),
                      ),

                      Column(
                        children: <Widget>[

                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(top: 325.h, left: 40.w),
                              child: Text(
                                Strings.hasPet,
                                style: TextStyle(
                                    fontSize: 13.sp
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(left: 40.w),
                            child: Row(
                              children: <Widget>[
                                Radio(
                                    value: true,
                                    groupValue: hasAnyPet,
                                    onChanged: (value){
                                      setState(() {
                                        hasAnyPet = value;
                                        debugPrint(hasAnyPet.toString());
                                      });
                                    }
                                ),

                                Text(
                                  Strings.yesRadio,
                                  style: TextStyle(
                                    fontSize: 14.sp
                                  ),
                                ),

                                Radio(
                                    value: false,
                                    groupValue: hasAnyPet,
                                    onChanged: (value){
                                      setState(() {
                                        hasAnyPet = value;
                                        debugPrint(hasAnyPet.toString());
                                      });
                                    }
                                ),

                                Text(
                                  Strings.noRadio,
                                  style: TextStyle(
                                      fontSize: 14.sp
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),

                      Column(
                        children: <Widget>[

                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(top: 385.h, left: 40.w),
                              child: Text(
                                Strings.hasOwnHome,
                                style: TextStyle(
                                    fontSize: 13.sp
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(left: 40.w),
                            child: Row(
                              children: <Widget>[
                                Radio(
                                    value: true,
                                    groupValue: hasOwnHome,
                                    onChanged: (value){
                                      setState(() {
                                        hasOwnHome = value;
                                        debugPrint(hasOwnHome.toString());
                                      });
                                    }
                                ),

                                Text(
                                  Strings.yesRadio,
                                  style: TextStyle(
                                      fontSize: 14.sp
                                  ),
                                ),

                                Radio(
                                    value: false,
                                    groupValue: hasOwnHome,
                                    onChanged: (value){
                                      setState(() {
                                        hasOwnHome = value;
                                        debugPrint(hasOwnHome.toString());
                                      });
                                    }
                                ),

                                Text(
                                 Strings.noRadio,
                                  style: TextStyle(
                                      fontSize: 14.sp
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),

                      Column(
                        children: <Widget>[

                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(top: 445.h, left: 40.w),
                              child: Text(
                                Strings.hasExp,
                                style: TextStyle(
                                    fontSize: 13.sp
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(left: 40.w),
                            child: Row(
                              children: <Widget>[
                                Radio(
                                    value: true,
                                    groupValue: hasExp,
                                    onChanged: (value){
                                      setState(() {
                                        hasExp = value;
                                        debugPrint(hasExp.toString());
                                      });
                                    }
                                ),

                                Text(
                                  Strings.yesRadio,
                                  style: TextStyle(
                                      fontSize: 14.sp
                                  ),
                                ),

                                Radio(
                                    value: false,
                                    groupValue: hasExp,
                                    onChanged: (value){
                                      setState(() {
                                        hasExp = value;
                                        debugPrint(hasExp.toString());
                                      });
                                    }
                                ),

                                Text(
                                  Strings.noRadio,
                                  style: TextStyle(
                                      fontSize: 14.sp
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),

                      Row(
                        children: <Widget>[

                          Padding(
                            padding: EdgeInsets.only(top: 505.h,left: 25.w),
                            child: Checkbox(
                                value: agreed,
                                onChanged: (value){
                                  setState(() {
                                    agreed = value;
                                    debugPrint(agreed.toString());
                                  });
                                }
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 505.h,left: 10.w),
                            child: Text(
                              Strings.agreed,
                              style: TextStyle(
                                  fontSize: 14.sp
                              ),
                            ),
                          )
                        ],
                      ),
                      
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(top: 555.h),
                          child: ElevatedButton.icon(
                              onPressed: () async {
                                if (_formkey.currentState!.validate()){
                                  if (agreed){
                                    final adopt = PetDatabase(pet: pet, petName: selectedPet['name']);
                                    await adopt.storeAdoptData(fullName, email, phoneNumber, hasAnyPet, hasOwnHome, hasExp, agreed);
                                    //debugPrint(agreed.toString());
                                    } else {
                                      final snackBar = SnackBar(
                                        content: Text(Strings.check),
                                        backgroundColor: Colors.black,
                                      );

                                      ///SnackBar Creation
                                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                    }
                                  }
                                },
                              icon: ProjectIcons.submit,
                              label: Text(
                                Strings.submitForm,
                                style: TextStyle(
                                  fontSize: 14.sp
                                ),
                              )
                          ),
                        ),
                      ),
                      
                    ],
                  )
              ),

            ],
          ),
        ),
      ),
    );
  }
}
