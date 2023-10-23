import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projeto_financeiro/utils/constants/appPalette.dart';
import 'package:projeto_financeiro/utils/validators.dart';
import 'package:projeto_financeiro/widgets/header.dart';
import 'package:projeto_financeiro/widgets/textForms.dart';

import '../../widgets/alertDialogs.dart';
import '../../widgets/transparentButton.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  final _questionFormGlobalKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppPalette.BACKGROUND_COLOR,
        resizeToAvoidBottomInset: false,
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              child: Column(
                children: [
                  Header(
                    constraints: constraints,
                    title: "Envie uma Pergunta",
                    isNewScreen: true,
                  ),
                  const SizedBox(height: 40),
                  Form(
                    key: _questionFormGlobalKey,
                    child: Column(
                      children: [
                        CustomTextFormField(
                          constraints: constraints,
                          hintText: "titulo da pergunta",
                          label: "Titulo",
                          controller: _titleController,
                          validator: (text) => Validator.validateNotEmpty(text),
                        ),
                        const SizedBox(height: 10),
                        ExpandableTextField(
                          constraints: constraints,
                          hintText: "conteudo da pergunta",
                          height: .4,
                          controller: _contentController,
                          validator: (text) => Validator.validateNotEmpty(text),
                          label: "Conteudo",
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 60),
                  TransparentButton(
                    constraints: constraints,
                    text: "Enviar Pergunta",
                    icon: Icons.question_mark,
                    width: .11,
                    onTap: () {
                      if (_questionFormGlobalKey.currentState!.validate()) {
                        AlertDialogs.sucessDialog(
                          context,
                          "Pergunta Enviada!!",
                          "Sua pergunta será respondida em até 1 semana",
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
