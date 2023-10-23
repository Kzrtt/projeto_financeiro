import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../utils/constants/appPalette.dart';
import 'baseProfileButton.dart';

class AddictionBox extends StatelessWidget {
  BoxConstraints constraints;
  String name;
  String abstinenceTime;
  double savedAmount;
  String finishTime;
  double percentage;

  AddictionBox({
    required this.constraints,
    required this.name,
    required this.savedAmount,
    required this.abstinenceTime,
    required this.finishTime,
    required this.percentage,
    super.key,
  });

  double calculateProgressWidth(double percentage, double maxWidth) {
    // Certifique-se de que a porcentagem não seja maior que 100%.
    percentage = percentage > 100.0 ? 100.0 : percentage;

    // Calcula a largura da barra de progresso com base na porcentagem e na largura máxima.
    return (percentage / 100.0) * maxWidth;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BaseProfileButton(
          constraints: constraints,
          height: .4,
          icon: Icons.close,
          widget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              Text(
                name,
                style: const TextStyle(
                  color: AppPalette.LOW_OPACITY_BLACK,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Progresso: ",
                style: TextStyle(
                  color: AppPalette.LOW_OPACITY_GREY,
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "R\$${savedAmount.toStringAsFixed(2)} Economizados em $name",
                style: const TextStyle(
                  color: AppPalette.CONTRAST_COLOR,
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Tempo sem: ",
                style: TextStyle(
                  color: AppPalette.LOW_OPACITY_GREY,
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                abstinenceTime,
                style: const TextStyle(
                  color: AppPalette.CONTRAST_COLOR,
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Meta atual: $finishTime",
                style: const TextStyle(
                  color: AppPalette.LOW_OPACITY_GREY,
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 10,
                width: constraints.maxWidth * .8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppPalette.BACKGROUND_COLOR,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 10,
                      width: calculateProgressWidth(
                        percentage,
                        constraints.maxWidth * .8,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppPalette.CONTRAST_COLOR,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }
}
