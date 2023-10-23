import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projeto_financeiro/model/expense.dart';
import 'package:projeto_financeiro/utils/appController.dart';
import 'package:projeto_financeiro/utils/constants/appPalette.dart';
import 'package:projeto_financeiro/utils/validators.dart';
import 'package:projeto_financeiro/widgets/header.dart';
import 'package:projeto_financeiro/widgets/textForms.dart';
import 'package:projeto_financeiro/widgets/transparentButton.dart';

import '../../widgets/alertDialogs.dart';

class ExpensesForm extends StatefulWidget {
  const ExpensesForm({super.key});

  @override
  State<ExpensesForm> createState() => _ExpensesFormState();
}

class _ExpensesFormState extends State<ExpensesForm> {
  final _addExpenseFormKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _costPerMonthController = TextEditingController();
  List<bool> checkboxValues = [true, false];

  void addExpense(bool isEssencial, Expense expense) {
    AppController.instance.user.accountBalance -= expense.value;
    if (isEssencial) {
      AppController.instance.user.essencials.add(expense);
    } else {
      AppController.instance.user.nonEssencials.add(expense);
    }
  }

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
                    title: "Adicionar Gasto",
                    isNewScreen: true,
                  ),
                  const SizedBox(height: 50),
                  Form(
                    key: _addExpenseFormKey,
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: constraints.maxWidth * .05),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextFormField(
                            constraints: constraints,
                            hintText: "nome da despesa",
                            label: "Nome",
                            controller: _nameController,
                            validator: (text) =>
                                Validator.validateNotEmpty(text),
                          ),
                          const SizedBox(height: 10),
                          CustomTextFormField(
                            constraints: constraints,
                            hintText: "R\$1000",
                            label: "Valor Mensal",
                            controller: _costPerMonthController,
                            validator: (text) =>
                                Validator.validateNotEmpty(text),
                          ),
                          const SizedBox(height: 30),
                          const Text(
                            "Tipo de Gasto: ",
                            style: TextStyle(
                              color: AppPalette.CONTRAST_COLOR,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    "Essencial",
                                    style: TextStyle(
                                      color: AppPalette.CONTRAST_COLOR,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Checkbox(
                                    value: checkboxValues[0],
                                    onChanged: (value) {
                                      setState(() {
                                        checkboxValues[0] = value!;
                                        checkboxValues[1] = false;
                                      });
                                    },
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "Não Essencial",
                                    style: TextStyle(
                                      color: AppPalette.CONTRAST_COLOR,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Checkbox(
                                    value: checkboxValues[1],
                                    onChanged: (value) {
                                      setState(() {
                                        checkboxValues[1] = value!;
                                        checkboxValues[0] = false;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 80),
                          TransparentButton(
                            constraints: constraints,
                            text: "Finalizar",
                            icon: Icons.check,
                            width: .17,
                            onTap: () {
                              if (_addExpenseFormKey.currentState!.validate()) {
                                if (checkboxValues[0]) {
                                  addExpense(
                                    true,
                                    Expense(
                                      name: _nameController.text,
                                      value: double.parse(
                                        _costPerMonthController.text,
                                      ),
                                    ),
                                  );
                                  Navigator.of(context).pop();
                                } else {
                                  addExpense(
                                    false,
                                    Expense(
                                      name: _nameController.text,
                                      value: double.parse(
                                        _costPerMonthController.text,
                                      ),
                                    ),
                                  );
                                  Navigator.of(context).pop();
                                }
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
                    ),
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
