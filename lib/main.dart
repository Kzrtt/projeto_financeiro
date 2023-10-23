import 'package:flutter/material.dart';
import 'package:projeto_financeiro/screens/addictionForm/addictionForm.dart';
import 'package:projeto_financeiro/screens/expensesForm/expensesForm.dart';
import 'package:projeto_financeiro/screens/questionScreen/questionScreen.dart';
import 'package:projeto_financeiro/screens/updateUserInfo/updateUserInfoScreen.dart';
import 'package:projeto_financeiro/utils/constants/appRoutes.dart';
import 'package:projeto_financeiro/screens/homeTab/homeTabScreen.dart';
import 'package:projeto_financeiro/screens/loginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projeto Financeiro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        AppRoutes.OPENING_SCREEN: (ctx) => LoginScreen(),
        AppRoutes.HOME_TAB: (ctx) => HomeTabScreen(),
        AppRoutes.ADD_ADDICTION: (ctx) => AddictionForm(),
        AppRoutes.ADD_EXPENSE: (ctx) => ExpensesForm(),
        AppRoutes.UPDATE_INFO: (ctx) => UpdateUserInfoScreen(),
        AppRoutes.ASK_QUESTION: (ctx) => QuestionScreen(),
      },
    );
  }
}
