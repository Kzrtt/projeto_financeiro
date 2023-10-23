import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projeto_financeiro/model/user.dart';
import 'package:projeto_financeiro/utils/appController.dart';
import 'package:projeto_financeiro/utils/constants/appPalette.dart';
import 'package:projeto_financeiro/utils/validators.dart';
import 'package:projeto_financeiro/widgets/header.dart';
import 'package:projeto_financeiro/widgets/textForms.dart';

import '../../widgets/alertDialogs.dart';
import '../../widgets/transparentButton.dart';

class UpdateUserInfoScreen extends StatefulWidget {
  const UpdateUserInfoScreen({super.key});

  @override
  State<UpdateUserInfoScreen> createState() => _UpdateUserInfoScreenState();
}

class _UpdateUserInfoScreenState extends State<UpdateUserInfoScreen> {
  final _updateUserInfoGlobalKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _professionController = TextEditingController();
  final _passwordController = TextEditingController();

  void updateInfoMethod(User newUser, User oldUser) {
    User u = User(
      name: newUser.name == "" ? oldUser.name : newUser.name,
      email: newUser.email == "" ? oldUser.email : newUser.email,
      profession:
          newUser.profession == "" ? oldUser.profession : newUser.profession,
      password: newUser.password == "" ? oldUser.password : newUser.password,
      addictionList: oldUser.addictionList,
      essencials: oldUser.essencials,
      nonEssencials: oldUser.nonEssencials,
      accountBalance: oldUser.accountBalance,
    );

    AppController.instance.user = u;
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
              child: Column(
                children: [
                  Header(
                    constraints: constraints,
                    title: "Alterar Cadastro",
                    isNewScreen: true,
                  ),
                  const SizedBox(height: 30),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Altere apenas as informações que deseja alterar",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppPalette.CONTRAST_COLOR,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Form(
                    key: _updateUserInfoGlobalKey,
                    child: Column(
                      children: [
                        CustomTextFormField(
                          constraints: constraints,
                          hintText: "nome do usuario",
                          label: "Nome",
                          controller: _nameController,
                          validator: (text) =>
                              Validator.changeInfoValidation(text, "x"),
                        ),
                        const SizedBox(height: 10),
                        CustomTextFormField(
                          constraints: constraints,
                          hintText: "email do usuario",
                          label: "Email",
                          controller: _emailController,
                          validator: (text) =>
                              Validator.changeInfoValidation(text, "email"),
                        ),
                        const SizedBox(height: 10),
                        CustomTextFormField(
                          constraints: constraints,
                          hintText: "profisão do usuario",
                          label: "Profisão",
                          controller: _professionController,
                          validator: (text) =>
                              Validator.changeInfoValidation(text, "x"),
                        ),
                        const SizedBox(height: 10),
                        CustomTextFormField(
                          constraints: constraints,
                          hintText: "senha do usuario",
                          label: "Senha",
                          controller: _passwordController,
                          validator: (text) =>
                              Validator.changeInfoValidation(text, "x"),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  TransparentButton(
                    constraints: constraints,
                    text: "Alterar Dados",
                    icon: Icons.person,
                    width: .14,
                    onTap: () {
                      if (_updateUserInfoGlobalKey.currentState!.validate()) {
                        User u = User(
                          name: _nameController.text,
                          email: _emailController.text,
                          profession: _professionController.text,
                          password: _passwordController.text,
                        );
                        updateInfoMethod(u, AppController.instance.user);
                        AlertDialogs.sucessDialog(
                          context,
                          "Informações alteradas!!",
                          "",
                        ).show().then((value) => Navigator.of(context).pop());
                      } else {
                        AlertDialogs.errorDialog(
                          context,
                          "Erro!!",
                          "Preencha corretamente os campos",
                        ).show();
                      }
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
