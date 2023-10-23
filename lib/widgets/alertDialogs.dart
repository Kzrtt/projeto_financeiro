import 'package:flutter/material.dart';
import 'package:projeto_financeiro/utils/appController.dart';
import 'package:projeto_financeiro/utils/constants/appPalette.dart';
import 'package:projeto_financeiro/widgets/textForms.dart';
import 'package:stylish_dialog/stylish_dialog.dart';

class AlertDialogs {
  static StylishDialog updateAccountBalance(
    BuildContext context,
    BoxConstraints constraints,
    String title,
    TextEditingController controller,
  ) {
    return StylishDialog(
      context: context,
      alertType: StylishDialogType.NORMAL,
      title: Text(
        title,
        style: const TextStyle(
          color: AppPalette.CONTRAST_COLOR,
        ),
      ),
      content: Column(
        children: [
          const SizedBox(height: 20),
          CustomTextFormField(
            constraints: constraints,
            hintText: "1000",
            label: "Saldo a ser adicionado",
            controller: controller,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () => Navigator.of(context).pop(),
                child: Container(
                  height: 35,
                  width: constraints.maxWidth * .3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppPalette.BACKGROUND_COLOR,
                  ),
                  child: const Center(
                    child: Text(
                      "Cancelar",
                      style: TextStyle(
                        fontSize: 14,
                        color: AppPalette.RED,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  if (controller.text != "") {
                    AppController.instance.user.accountBalance +=
                        double.parse(controller.text);
                    Navigator.of(context).pop();
                  }
                },
                child: Container(
                  height: 35,
                  width: constraints.maxWidth * .3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppPalette.BACKGROUND_COLOR,
                  ),
                  child: const Center(
                    child: Text(
                      "Adicionar",
                      style: TextStyle(
                        fontSize: 14,
                        color: AppPalette.PRIMARY_COLOR,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  static StylishDialog confirmDialog(
    BuildContext context,
    BoxConstraints constraints,
    String title,
    String message,
    void Function() onTap,
  ) {
    return StylishDialog(
      context: context,
      alertType: StylishDialogType.WARNING,
      title: Text(title),
      content: Text(message, textAlign: TextAlign.center),
      confirmButton: InkWell(
        onTap: onTap,
        child: Container(
          height: constraints.maxHeight * .05,
          width: constraints.maxWidth * .2,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppPalette.RED, width: 1.5),
          ),
          child: const Center(
            child: Text(
              'Cancelar',
              style: TextStyle(
                color: AppPalette.RED,
              ),
            ),
          ),
        ),
      ),
      cancelButton: InkWell(
        onTap: () => Navigator.of(context).pop(),
        child: Container(
          height: constraints.maxHeight * .05,
          width: constraints.maxWidth * .2,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppPalette.PRIMARY_COLOR, width: 1.5),
          ),
          child: const Center(
            child: Text(
              'Voltar',
              style: TextStyle(
                color: AppPalette.PRIMARY_COLOR,
              ),
            ),
          ),
        ),
      ),
    );
  }

  static StylishDialog errorDialog(
    BuildContext context,
    String title,
    String message,
  ) {
    return StylishDialog(
      context: context,
      alertType: StylishDialogType.ERROR,
      title: Text(title),
      content: Text(message, textAlign: TextAlign.center),
    );
  }

  static StylishDialog errorDialogWithButton(
    BuildContext context,
    BoxConstraints constraints,
    String title,
    String message,
    void Function()? onTap,
  ) {
    return StylishDialog(
      context: context,
      alertType: StylishDialogType.ERROR,
      title: Text(title),
      content: Text(message, textAlign: TextAlign.center),
      confirmButton: InkWell(
        onTap: onTap,
        child: Container(
          height: constraints.maxHeight * .02,
          width: constraints.maxWidth * .05,
          decoration: BoxDecoration(
            color: AppPalette.PRIMARY_COLOR,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text('Voltar'),
        ),
      ),
    );
  }

  static StylishDialog sucessDialog(
    BuildContext context,
    String title,
    String message,
  ) {
    return StylishDialog(
      context: context,
      alertType: StylishDialogType.SUCCESS,
      title: Text(title),
      content: Text(message, textAlign: TextAlign.center),
    );
  }
}
