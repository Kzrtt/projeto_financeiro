import 'package:flutter/material.dart';
import 'package:projeto_financeiro/screens/addictionForm/addictionForm.dart';
import 'package:projeto_financeiro/screens/expensesForm/expensesForm.dart';
import 'package:projeto_financeiro/screens/questionScreen/questionScreen.dart';
import 'package:projeto_financeiro/screens/supportMaterial/desenvProfissionalEFinanceiro.dart';
import 'package:projeto_financeiro/screens/supportMaterial/estudoDeCasoEAtvPratica.dart';
import 'package:projeto_financeiro/screens/supportMaterial/estudoEBuscaDeConhecimento.dart';
import 'package:projeto_financeiro/screens/supportMaterial/gestaoDeDividas.dart';
import 'package:projeto_financeiro/screens/supportMaterial/introducao.dart';
import 'package:projeto_financeiro/screens/supportMaterial/investimentos.dart';
import 'package:projeto_financeiro/screens/supportMaterial/reservaDeEmergencia.dart';
import 'package:projeto_financeiro/screens/supportMaterial/suportMaterial.dart';
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
        AppRoutes.OPENING_SCREEN: (ctx) => const LoginScreen(),
        AppRoutes.HOME_TAB: (ctx) => const HomeTabScreen(),
        AppRoutes.ADD_ADDICTION: (ctx) => const AddictionForm(),
        AppRoutes.ADD_EXPENSE: (ctx) => const ExpensesForm(),
        AppRoutes.UPDATE_INFO: (ctx) => const UpdateUserInfoScreen(),
        AppRoutes.ASK_QUESTION: (ctx) => const QuestionScreen(),
        AppRoutes.SUPPORT_MATERIAL: (ctx) => const SuportMaterial(),

        //? Material de Apoio
        AppRoutes.DESENV_PROFISSIONAL_E_FINANCEIRO: (ctx) =>
            const DesenvProfissionalEFinanceiro(),
        AppRoutes.ESTUDO_DE_CASO_E_ATV_PRATICA: (ctx) =>
            const EstudoDeCasoEAtvPratica(),
        AppRoutes.ESTUDO_E_BUSCA_DE_CONHECIMENTO: (ctx) =>
            const EstudoEBuscaDeConhecimento(),
        AppRoutes.GESTAO_DE_DIVIDAS: (ctx) => const GestaoDeDividas(),
        AppRoutes.INVESTIMENTOS: (ctx) => const Investimentos(),
        AppRoutes.RESERVA_DE_EMERGENCIA: (ctx) => const ReservaDeEmergencia(),
        AppRoutes.INTRODUCAO: (ctx) => const Introducao(),
      },
    );
  }
}
