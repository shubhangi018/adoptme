// ignore_for_file: use_key_in_widget_constructors

import 'package:animaladopt/project_imports.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserUID?>(context);
    if (user == null) {
      return Authenticate();
    } else {
      return HomePage();
    }
  }
}