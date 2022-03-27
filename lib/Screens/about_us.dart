// ignore_for_file: use_key_in_widget_constructors

import 'package:animaladopt/project_imports.dart';

class AboutUs extends StatelessWidget {

  final List<Map<String, dynamic>> _details = [
    {
      'Title': Strings.founder,
      'Icon': ProjectIcons.fullNameIcon,
      'SubTitle': Strings.founderName,
    },
    {
      'Title': Strings.email,
      'Icon': ProjectIcons.emailIcon,
      'SubTitle': Strings.shelterEmail,
    },
    {
      'Title': Strings.phoneNumber,
      'Icon': ProjectIcons.phoneNumberIcon,
      'SubTitle': Strings.founderNumber,
    },
    {
      'Title': Strings.location,
      'Icon': ProjectIcons.location,
      'SubTitle': Strings.shelterLocation,
    },
    {
      'Title': Strings.shelterName,
      'Icon': ProjectIcons.shelter,
      'SubTitle': Strings.shelterInfo,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().screenHeight,
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.srcOver),
              image: AssetImage(ImageStrings.splashBG),
            )),

        child: Stack(
          children: <Widget>[

            Align(
                alignment: Alignment.topCenter,
                child: titleUI(0.w,50.h,24.sp,4.sp,Strings.aboutUs)
            ),

            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 80.h),
              child: ListView.builder(
                  itemCount: _details.length,
                  itemBuilder: (context, index){
                    return Card(
                      margin: EdgeInsets.all(5.sp),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.sp),
                          side: BorderSide(width: 2.sp, color: ProjectColors.primaryT)),
                      child: SizedBox(
                        height: _details[index]['Title'] == Strings.shelterName ? 260.h : 90.h,
                        child: ListTile(

                          leading: Container(
                              padding: EdgeInsets.only(top: 10.h, left: 5.w),
                              child: _details[index]['Icon']),

                          title: Padding(
                            padding: EdgeInsets.only(top: 20.h),
                            child: Text(
                              _details[index]['Title'],
                              style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.bold,
                                color: ProjectColors.primaryT,
                              ),
                            ),
                          ),

                          subtitle: Container(
                            padding: EdgeInsets.only(top: 10.h),
                            child: Text(
                              _details[index]['SubTitle'],
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}
