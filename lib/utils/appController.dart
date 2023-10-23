// ignore: file_names
import 'package:projeto_financeiro/model/user.dart';

import '../model/addiction.dart';
import '../model/expense.dart';

class AppController {
  static AppController? _instance;
  User user = User();

  String bearerToken = "";
  bool fistAcess = false;
  bool isLoaded = false;
  String device = "";
  String uuid = "";
  String accessToken = "";
  int selectedStudentId = 0;
  String selectedStudentName = "";

  AppController._internal();

  static get instance {
    _instance ??= AppController._internal();
    return _instance;
  }
}
