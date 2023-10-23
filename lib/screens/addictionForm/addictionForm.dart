import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';
import 'package:projeto_financeiro/model/addiction.dart';
import 'package:projeto_financeiro/model/expense.dart';
import 'package:projeto_financeiro/utils/appController.dart';
import 'package:projeto_financeiro/utils/constants/appPalette.dart';
import 'package:projeto_financeiro/widgets/alertDialogs.dart';
import 'package:projeto_financeiro/widgets/header.dart';
import 'package:projeto_financeiro/widgets/textForms.dart';
import 'package:projeto_financeiro/widgets/transparentButton.dart';

import '../../utils/validators.dart';

class AddictionForm extends StatefulWidget {
  const AddictionForm({super.key});

  @override
  State<AddictionForm> createState() => _AddictionFormState();
}

class _AddictionFormState extends State<AddictionForm> {
  final _addAddictionFormKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _costPerMonthController = TextEditingController();

  DateTime selectedDate = DateTime.now();

  Future<void> pickDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  void addAddiction(Addiction addiction) {
    AppController.instance.user.addictionList.add(addiction);
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
                    title: "Adicionar Vício",
                    isNewScreen: true,
                  ),
                  const SizedBox(height: 40),
                  Form(
                    key: _addAddictionFormKey,
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: constraints.maxWidth * .05),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextFormField(
                            constraints: constraints,
                            hintText: "refrigerante",
                            label: "Nome",
                            controller: _nameController,
                            validator: (text) =>
                                Validator.validateNotEmpty(text),
                          ),
                          const SizedBox(height: 10),
                          CustomTextFormField(
                            constraints: constraints,
                            hintText: "R\$100",
                            label: "Gasto Mensal ",
                            controller: _costPerMonthController,
                            validator: (text) =>
                                Validator.validateNotEmpty(text),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Meta para abstinência: ${DateFormat('dd/MM/yyyy').format(selectedDate)}",
                            style: const TextStyle(
                              color: AppPalette.CONTRAST_COLOR,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(height: 30),
                          TransparentButton(
                            constraints: constraints,
                            text: "Escolher Data",
                            icon: Icons.date_range,
                            width: .13,
                            onTap: () => pickDate(context),
                          ),
                          const SizedBox(height: 100),
                          TransparentButton(
                            constraints: constraints,
                            text: "Finalizar",
                            icon: Icons.date_range,
                            color: AppPalette.CONTRAST_COLOR,
                            width: .17,
                            onTap: () {
                              if (_addAddictionFormKey.currentState!
                                      .validate() &&
                                  selectedDate != DateTime.now()) {
                                Addiction newAddiction = Addiction(
                                  name: _nameController.text,
                                  costPerMonth: double.parse(
                                      _costPerMonthController.text),
                                  startTime: DateTime.now(),
                                  finishTime: selectedDate,
                                );
                                addAddiction(newAddiction);
                                Navigator.of(context).pop();
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
