// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables, must_be_immutable

import 'package:animaladopt/project_imports.dart';

class AdoptionPage extends StatefulWidget {
  AdoptionPage({required this.items});

  final List<Map<String, dynamic>> items;

  @override
  State<AdoptionPage> createState() => _AdoptionPageState();
}

class _AdoptionPageState extends State<AdoptionPage> {

  @override
  Widget build(BuildContext context) {

    final selection =
    ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final String pet = selection['pet'];
    final String petImg = selection['image'];
    List<Map<String, dynamic>> petList = widget.items;


    return Scaffold(
      body: Stack(
        children: <Widget>[
          ///Title and Image
          buildDescription(pet, petImg),

          ///Appbar
          buildAppBar(),

          ///Pets
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 290.h),
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: petList.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 400.h,
                    child: Card(
                      child: Theme(
                          data: ThemeData(fontFamily: 'Lora'),
                          child: ListTile(
                            title: Stack(
                              children: <Widget>[

                                Padding(
                                  padding: EdgeInsets.only(top: 10.h),
                                  child: Container(
                                    height: 200.h,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black, width: 2.sp),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                petList[index]['url']),
                                            fit: BoxFit.fitHeight)),
                                  ),
                                ),

                                Padding(
                                  padding:
                                  EdgeInsets.only(left: 10.w, top: 220.h),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        petList[index]['name'],
                                        style: TextStyle(
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.bold),
                                      ),

                                      SizedBox(width: 10.w),

                                      SizedBox(
                                       child: petList[index]['gender'] ? ProjectIcons.male : ProjectIcons.female,
                                      )
                                    ],
                                  ),
                                ),

                                // Padding(
                                //   padding:
                                //   EdgeInsets.only(left: 10.w, top: 240.h),
                                //   child: Row(
                                //     children: <Widget>[
                                //
                                //       SizedBox(
                                //         child: ProjectIcons.location,
                                //       ),
                                //
                                //       SizedBox(width: 10.w),
                                //
                                //       Text(
                                //         petList[index]['location'],
                                //         style: TextStyle(
                                //             fontSize: 14.sp,
                                //             fontWeight: FontWeight.bold),
                                //       )
                                //     ],
                                //   ),
                                // ),
                              ],
                            ),
                            subtitle: Stack(
                              children: <Widget>[

                                Padding(
                                  padding:
                                  EdgeInsets.only(top: 10.h, left: 10.w),
                                  child: Text(
                                    'Age: ${petList[index]['age']}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.sp,
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding:
                                  EdgeInsets.only(top: 40.h, left: 10.w),
                                  child: Text(
                                    petList[index]['info'],
                                    style: TextStyle(
                                      fontSize: 16.sp
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding:
                                  EdgeInsets.only(top: 90.h,left: 100.w),
                                  child: SizedBox(
                                    height: 40.h,
                                    width: 120.w,
                                    child: ElevatedButton(
                                      onPressed: () {debugPrint(petList[index].toString());},
                                      style: ElevatedButton.styleFrom(
                                        primary: ProjectColors.formFieldBordersActive
                                      ),
                                      child:Text(
                                        Strings.adopt,
                                        style: TextStyle(
                                          fontSize: 16.sp
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          )),
                    ),
                  );
                }),
          ),

        ],
      ),
    );
  }


  Widget buildDescription(String pet, String petImg) {
    return Container(
      height: 270.h,
      width: ScreenUtil().screenWidth,
      decoration: BoxDecoration(
        gradient: gradientLayoutPW,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60.h)),
      ),
      child: Stack(
        children: <Widget>[
          titleUI(35.w, 180.h, 36.sp, 4.sp,
              pet), //'Wedding','Religious Occasions','Home Occasions','Baby Shower','Cars','Others'

          Padding(
            padding: EdgeInsets.only(top: 30.h, left: 200.w),
            child: Container(
              width: 140.w,
              height: 120.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(petImg), //ImageStrings.wedding,ImageStrings.temple,ImageStrings.home,ImageStrings.babyShower,ImageStrings.car,ImageStrings.others
                  )),
            ),
          )
        ],
      ),
    );
  }

  Widget buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      elevation: 0.0,
      leading: Padding(
        padding: EdgeInsets.only(left: 10.w),
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: ProjectIcons.popIcon,
          //color: ProjectColors.loginRegisterButton,
          iconSize: 30.sp,
        ),
      ),
    );
  }

}