// ignore_for_file: use_key_in_widget_constructors

import 'package:animaladopt/project_imports.dart';

///This class is the HomePage for the Project
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ///Declarations and Initializations
  final AuthService _auth = AuthService();
  final petData = PetDataInfo();

  final List<Map<String, dynamic>> petList = [
    {'pet': 'Cat', 'image': ImageStrings.cat},
    {'pet': 'Dog', 'image': ImageStrings.dog}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ///Logo and Background
          homeLogo(),

          ///HomeBar
          homeBar(),

          ///Title
          Padding(
            padding: EdgeInsets.only(left: 18.w, top: 220.h),
            child: Text(
              Strings.pawFriend,
              style: TextStyle(fontSize: 24.sp),
            ),
          ),
          //titleUI(18.w, 220.h, 24.sp, 4.sp, Strings.pawFriend),

          ///Services List
          services()
        ],
      ),
    );
  }

  ///HomePage AppBar
  Widget homeBar() {
    return Padding(
      padding: EdgeInsets.only(right: 15.w),
      //EdgeInsets.only(top: 10.h,right: 18.w),
      child: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 18.sp,
                foregroundColor: ProjectColors.primaryT,
                backgroundColor: Colors.white,
                child: IconButton(
                  onPressed: () {
                    ///Navigation to AboutUs
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AboutUs()));
                  },
                  icon: ProjectIcons.detailsIcon,
                  iconSize: 20.sp,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  Strings.aboutUs,
                  style: TextStyle(
                    fontSize: 8.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          ///Space Between the two Columns
          SizedBox(
            width: 10.w,
          ),

          ///Signing Out From Current Account
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 18.sp,
                foregroundColor: ProjectColors.primaryT,
                backgroundColor: Colors.white,
                child: IconButton(
                  onPressed: () async {
                    await _auth.signOut();
                  },
                  icon: ProjectIcons.logOutIcon,
                  iconSize: 20.sp,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  Strings.logout,
                  style: TextStyle(
                    fontSize: 8.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  ///HomeLogo Design
  Widget homeLogo() {
    return Container(
      height: 200.h,
      width: ScreenUtil().screenWidth,
      decoration: BoxDecoration(
        gradient: gradientLayoutPW,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60.h), bottomRight: Radius.circular(60.h)),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.only(top: 18.h),
          child: Container(
            alignment: Alignment.center,
            width: 140.w,
            height: 140.h,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(ImageStrings.logo))),
          ),
        ),
      ),
    );
  }

  Widget services() {
    return Padding(
      padding: EdgeInsets.only(top: 230.h),
      child: ListView.builder(
          itemCount: petList.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            final List<Map<String, dynamic>> petSelectionList =
                petSelection(petData, petList[index]['pet']);
            return SizedBox(
              height: 180.h,
              child: Card(
                child: Theme(
                  data: ThemeData(fontFamily: 'Lora'),
                  child: GestureDetector(
                    onTap: () {
                      ///Navigation to SelectionProvider() with selected grid as a argument,
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              AdoptionPage(items: petSelectionList),
                          settings: RouteSettings(
                            arguments: petList[index],
                          ),
                        ),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 5.h),
                          child: Container(
                            height: 100.h,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(petList[index]['image']),
                              //fit: BoxFit.fill
                            )),
                          ),
                        ),
                        Text(
                          petList[index]['pet'],
                          style: TextStyle(
                            fontSize: 24.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }

  List<Map<String, dynamic>> petSelection(PetDataInfo petData, String pet) {
    List<Map<String, dynamic>> redirectList = [];

    switch (pet) {
      case 'Cat':
        {
          redirectList = petData.cat();
        }
        break;

      default:
        {
          redirectList = petData.dog();
        }
    }
    return redirectList;
  }


}
