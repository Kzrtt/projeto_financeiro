import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projeto_financeiro/utils/constants/appPalette.dart';
import 'package:projeto_financeiro/model/expense.dart';
import 'package:projeto_financeiro/widgets/baseKitBox.dart';
import 'package:projeto_financeiro/widgets/header.dart';

import '../../utils/appController.dart';

class ExpensesControl extends StatefulWidget {
  BoxConstraints constraints;
  ExpensesControl({
    required this.constraints,
    super.key,
  });

  @override
  State<ExpensesControl> createState() => _ExpensesControlState();
}

class _ExpensesControlState extends State<ExpensesControl> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Header(
            constraints: widget.constraints,
            title: "Controle de Gastos",
            isNewScreen: false,
          ),
          const SizedBox(height: 30),
          Text(
            "Total Disponivel: R\$${AppController.instance.user.accountBalance}",
            style: const TextStyle(
              color: AppPalette.CONTRAST_COLOR,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 30),
          BaseKitBox(
            constraints: widget.constraints,
            kitName: "Gastos Essenciais",
            height: 300,
            widget: Expanded(
              child: ListView.builder(
                itemCount: AppController.instance.user.essencials.length,
                itemBuilder: (context, index) {
                  Expense currentExpense =
                      AppController.instance.user.essencials[index];
                  return Column(
                    children: [
                      const SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              currentExpense.name,
                              style: const TextStyle(
                                color: AppPalette.LOW_OPACITY_GREY,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "R\$${currentExpense.value}",
                              style: const TextStyle(
                                color: AppPalette.CONTRAST_COLOR,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 30),
          BaseKitBox(
            constraints: widget.constraints,
            kitName: "Gastos Não Essenciais",
            height: 300,
            widget: Expanded(
              child: ListView.builder(
                itemCount: AppController.instance.user.nonEssencials.length,
                itemBuilder: (context, index) {
                  Expense currentExpense =
                      AppController.instance.user.nonEssencials[index];
                  return Column(
                    children: [
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              currentExpense.name,
                              style: const TextStyle(
                                color: AppPalette.LOW_OPACITY_GREY,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "R\$${currentExpense.value}",
                              style: const TextStyle(
                                color: AppPalette.CONTRAST_COLOR,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
