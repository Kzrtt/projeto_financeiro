import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projeto_financeiro/model/user.dart';
import 'package:projeto_financeiro/utils/appController.dart';
import 'package:projeto_financeiro/utils/constants/appPalette.dart';
import 'package:projeto_financeiro/utils/constants/appRoutes.dart';
import 'package:projeto_financeiro/utils/constants/mockUpData.dart';
import 'package:projeto_financeiro/utils/validators.dart';
import 'package:projeto_financeiro/widgets/alertDialogs.dart';
import 'package:projeto_financeiro/widgets/textForms.dart';

import '../model/addiction.dart';
import '../model/expense.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoading = false;
  final loginFormGlobalKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  List<User> mockUpData = [
    User(
      name: "Felipe Kurt Pohling",
      profession: "Programador Mobile",
      password: "Teste123@",
      email: "teste@gmail.com",
      accountBalance: 1500,
      addictionList: [
        Addiction(
          name: "Refrigerante",
          costPerMonth: 100,
          startTime: DateTime(2023, 9, 22),
          finishTime: DateTime(2024, 2, 10),
        ),
        Addiction(
          name: "Doces",
          costPerMonth: 50,
          startTime: DateTime(2023, 5, 10),
          finishTime: DateTime(2023, 10, 30),
        ),
        Addiction(
          name: "Alcool",
          costPerMonth: 500,
          startTime: DateTime(2023, 10, 1),
          finishTime: DateTime(2023, 11, 10),
        ),
      ],
      essencials: [
        Expense(
          name: "Mercado",
          value: 300,
        ),
        Expense(
          name: "Aluguel",
          value: 700,
        ),
        Expense(
          name: "Contas",
          value: 120,
        ),
      ],
      nonEssencials: [
        Expense(
          name: "Tooma Calourada",
          value: 80,
        ),
        Expense(
          name: "Barzinho",
          value: 180,
        ),
        Expense(
          name: "Roupas Novas",
          value: 580,
        ),
      ],
    ),
  ];

  bool loginMethod(String email, String password) {
    bool isFound = false;
    for (var element in mockUpData) {
      print(element.email);
      if (element.email == email && element.password == password) {
        AppController.instance.user = element;
        Navigator.of(context).pushReplacementNamed(AppRoutes.HOME_TAB);
        print(element);
        isFound = true;
      }
    }
    return isFound;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppPalette.BACKGROUND_COLOR,
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset("assets/header.png"),
                    const SizedBox(height: 15),
                    Container(
                      height: 100,
                      width: constraints.maxWidth * .9,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    const SizedBox(height: 60),
                    Form(
                      key: loginFormGlobalKey,
                      child: Column(
                        children: [
                          CustomTextFormField(
                            constraints: constraints,
                            hintText: "exemplo@gmail.com",
                            label: "Email",
                            validator: (text) => Validator.validateEmail(text),
                            controller: emailController,
                          ),
                          const SizedBox(height: 10),
                          PasswordWithObscureTextField(
                            constraints: constraints,
                            hintText: "sua senha",
                            validator: (text) =>
                                Validator.validatePassword(text),
                            label: "Senha",
                            controller: passwordController,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          child: Column(
                            children: [
                              const Text(
                                "Não possui conta?",
                                style: TextStyle(
                                  color: AppPalette.LOW_OPACITY_BLACK,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: constraints.maxHeight * .005),
                              const Text(
                                "cadastre-se",
                                style: TextStyle(
                                  color: AppPalette.CONTRAST_COLOR,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          onTap: () {},
                        ),
                        isLoading
                            ? const Center(
                                child: CircularProgressIndicator(
                                  color: AppPalette.PRIMARY_COLOR,
                                ),
                              )
                            : InkWell(
                                child: Container(
                                  height: constraints.maxHeight * .06,
                                  width: constraints.maxWidth * .4,
                                  decoration: BoxDecoration(
                                    color: AppPalette.CONTRAST_COLOR,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Iniciar",
                                      style: TextStyle(
                                        fontSize: constraints.maxHeight * .025,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  if (loginFormGlobalKey.currentState!
                                      .validate()) {
                                    bool isLoginSucessful = loginMethod(
                                        emailController.text,
                                        passwordController.text);
                                    if (isLoginSucessful) {
                                      setState(() {
                                        isLoading = true;
                                      });
                                      Future.delayed(Duration(seconds: 2)).then(
                                          (value) => Navigator.of(context)
                                              .pushReplacementNamed(
                                                  AppRoutes.HOME_TAB));
                                    } else {
                                      AlertDialogs.errorDialog(
                                        context,
                                        "Erro no Login!",
                                        "Credenciais Incorretas",
                                      ).show().then((value) {
                                        setState(() {
                                          isLoading = false;
                                        });
                                      });
                                    }
                                  }
                                },
                              ),
                      ],
                    ),
                    const SizedBox(height: 58),
                    const Text(
                      "Esqueci a Senha",
                      style: TextStyle(
                        color: AppPalette.LOW_OPACITY_GREY,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Image.asset("assets/footer.png"),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
