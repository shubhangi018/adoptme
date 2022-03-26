// ignore_for_file: use_key_in_widget_constructors


import 'package:animaladopt/project_imports.dart';


class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // late Timer _timer;
  //
  // ///initState() will run only once in the whole widget tree of SplashScreen class.
  // ///It is very similar to Java start() which runs only once in the whole program.
  // @override
  // void initState() {
  //   super.initState();
  //   _timer = Timer(
  //       const Duration(seconds: 5),
  //
  //       ///pushReplacement will push the provided Widget('Wrapper()') in the
  //       ///replacement of the previous Widget('SplashScreen()') and context will also
  //       ///get shifted.
  //           () => Navigator.pushReplacement(
  //           context, MaterialPageRoute(builder: (context) => Wrapper())));
  // }
  //
  // ///dispose() method will be run at last when the context is shifted or being killed.
  // ///It is very similar to Java destroy() which runs at the end of the program.
  // @override
  // void dispose() {
  //   _timer.cancel();
  //   super.dispose();
  // }

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
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 30.h,right: 15.w),
                  child: Container(
                    alignment: Alignment.center,
                    width: 140.w,
                    height: 140.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(ImageStrings.logo)
                        )
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(51.w, 425.h, 52.w, 110.h),
                  child: SpinKitThreeBounce(
                    color: Colors.white,
                    size: 50.w,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}