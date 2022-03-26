// ignore_for_file: use_key_in_widget_constructors

import 'package:animaladopt/project_imports.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 640),
        builder: () {
          return MaterialApp(
            title: 'Adopt Me',
            theme: ThemeData(fontFamily: 'Lora'),
            debugShowCheckedModeBanner: false,
            home: HomePage()//SplashScreen(),LoginPage()
          );
        }
    );
  }
}
