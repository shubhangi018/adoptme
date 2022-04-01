import 'package:animaladopt/project_imports.dart';

class FinalPage extends StatelessWidget {
  const FinalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().screenHeight,
        decoration: BoxDecoration(
          gradient: gradientLayoutPW,
        ),
        child: Stack(
          children: <Widget>[

            Padding(
              padding: EdgeInsets.only(top: 50.h),
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 200.w,
                  height: 200.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageStrings.finalImg)
                    )
                  ),
                ),
              ),
            ),


            Align(
              alignment: Alignment.center,
              child: Material(
                elevation: 20,
                borderRadius: BorderRadius.all(Radius.circular(10.sp)),
                child: Container(
                  height: 100.h,
                  width: 340.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.sp))
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      Strings.finalMsg,
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

