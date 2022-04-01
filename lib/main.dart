// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors


import 'package:animaladopt/project_imports.dart';


Future<void> main() async {

  ///This will help to bind all the widgets used in the project
  WidgetsFlutterBinding.ensureInitialized();

  ///Functions related to Firebase will get initialize in the app
  await Firebase.initializeApp();

  ///Root of the Project
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => StreamProvider<UserUID?>(
          create: (_) => AuthService().user,
          initialData: UserUID(uid: 'No User Found'),
          builder: (context, snapshot) {
            return MaterialApp(
              title: 'Animal Adopt',
              theme: ThemeData(fontFamily: 'Lora'),
              debugShowCheckedModeBanner: false,
              home: SplashScreen(),
            );
          }),
      designSize: const Size(360, 640),
    );
  }
}
