import '../../model/addiction.dart';
import '../../model/expense.dart';
import '../../model/user.dart';

class MockUpData {
  static List<User> mockUpData = [
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
}
