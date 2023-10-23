import 'package:projeto_financeiro/model/addiction.dart';
import 'package:projeto_financeiro/model/expense.dart';
import 'package:projeto_financeiro/model/generalVision.dart';

class User {
  String name;
  String profession;
  String password;
  String email;
  double accountBalance;
  List<Expense>? essencials;
  List<Expense>? nonEssencials;
  List<Addiction>? addictionList;
  List<GeneralVision>? generalVision;

  User({
    this.name = "",
    this.profession = "",
    this.password = "",
    this.email = "",
    this.accountBalance = 0,
    this.essencials,
    this.nonEssencials,
    this.addictionList,
    this.generalVision,
  });
}
