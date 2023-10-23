import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projeto_financeiro/utils/constants/appPalette.dart';
import 'package:projeto_financeiro/model/addiction.dart';
import 'package:projeto_financeiro/widgets/addictionBox.dart';
import 'package:projeto_financeiro/widgets/baseProfileButton.dart';
import 'package:projeto_financeiro/widgets/header.dart';

import '../../utils/appController.dart';

class AddictionControllScreen extends StatefulWidget {
  BoxConstraints constraints;
  AddictionControllScreen({
    required this.constraints,
    super.key,
  });

  @override
  State<AddictionControllScreen> createState() =>
      _AddictionControllScreenState();
}

class _AddictionControllScreenState extends State<AddictionControllScreen> {
  String calculateDuration(DateTime start, DateTime end) {
    if (end.isBefore(start)) {
      throw ArgumentError(
          'A data de término deve ser posterior à data de início.');
    }

    int years = end.year - start.year;
    int months = end.month - start.month;
    int days = end.day - start.day;

    if (days < 0) {
      months--;
      int lastMonth = start.add(Duration(days: 1)).month;
      days += DateTime(end.year, lastMonth + 1, 0).day;
    }

    if (months < 0) {
      years--;
      months += 12;
    }

    if (years == 0) {
      if (months == 0) {
        return '$days dias';
      } else {
        if (days == 0) {
          return '$months meses';
        } else {
          return '$months meses e $days dias';
        }
      }
    } else if (months == 0) {
      return '$days dias';
    } else {
      return "$years anos, $months meses e $days dias";
    }
  }

  double calculateSavings(double monthlyExpense, DateTime startDate) {
    DateTime currentDate = DateTime.now();
    int daysElapsed = currentDate.difference(startDate).inDays;
    double dailyExpense = monthlyExpense / 30.0; // Supomos 30 dias em um mês

    double savedAmount = dailyExpense * daysElapsed;

    return savedAmount;
  }

  double calculateProgressPercentage(DateTime startDate, DateTime endDate) {
    DateTime currentDate = DateTime.now();
    if (currentDate.isBefore(startDate)) {
      return 0.0;
    } else if (currentDate.isAfter(endDate)) {
      return 100.0;
    } else {
      double totalDays = endDate.difference(startDate).inDays.toDouble();
      double daysPassed = currentDate.difference(startDate).inDays.toDouble();
      return (daysPassed / totalDays) * 100;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header(
          constraints: widget.constraints,
          title: "Controle de Vícios",
          isNewScreen: false,
        ),
        const SizedBox(height: 30),
        Expanded(
          child: ListView.builder(
            itemCount: AppController.instance.user.addictionList.length,
            itemBuilder: (context, index) {
              Addiction currentAddiction =
                  AppController.instance.user.addictionList[index];
              return Padding(
                padding: const EdgeInsets.all(15),
                child: AddictionBox(
                  constraints: widget.constraints,
                  name: currentAddiction.name,
                  abstinenceTime: calculateDuration(
                    currentAddiction.startTime,
                    DateTime.now(),
                  ),
                  percentage: calculateProgressPercentage(
                    currentAddiction.startTime,
                    currentAddiction.finishTime,
                  ),
                  finishTime: calculateDuration(
                    currentAddiction.startTime,
                    currentAddiction.finishTime,
                  ),
                  savedAmount: calculateSavings(
                    currentAddiction.costPerMonth,
                    currentAddiction.startTime,
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
