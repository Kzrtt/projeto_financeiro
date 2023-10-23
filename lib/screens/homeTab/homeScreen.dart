import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projeto_financeiro/utils/constants/appPalette.dart';
import 'package:projeto_financeiro/widgets/alertDialogs.dart';
import 'package:projeto_financeiro/widgets/baseProfileButton.dart';

import '../../utils/appController.dart';
import '../../widgets/baseKitBox.dart';

class HomeScreen extends StatefulWidget {
  BoxConstraints constraints;
  HomeScreen({
    required this.constraints,
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> topics = const ["teste1", "teste2", "teste3", "teste4"];
  List<String> values = const ["R\$1500", "R\$2200", "R\$1200", "R\$250"];
  List<bool> status = const [false, true, false, true];
  List<MaterialColor> colors = const [
    Colors.red,
    Colors.amber,
    Colors.blue,
    Colors.orange
  ];
  final accountBalanceController = TextEditingController();
  final accountBalanceFormGlobalKey = GlobalKey<FormState>();

  Widget buildTopic(int index, BoxConstraints constraints) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(constraints.maxHeight * .01),
          child: SizedBox(
            height: constraints.maxHeight * .05,
            width: constraints.maxWidth,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //? bola do tópico
                SizedBox(
                  height: constraints.maxHeight * .05,
                  width: constraints.maxWidth * .09,
                  child: Icon(
                    Icons.circle,
                    color: colors[index],
                    size: constraints.maxHeight * .02,
                  ),
                ),
                //? texto do tópico
                SizedBox(
                  height: constraints.maxHeight * .05,
                  width: constraints.maxWidth * .4,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: constraints.maxHeight * .005,
                    ),
                    child: Text(
                      topics[index],
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: constraints.maxHeight * .022,
                      ),
                    ),
                  ),
                ),
                //? valor tópico
                Container(
                  height: constraints.maxHeight * .05,
                  width: constraints.maxWidth * .36,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: constraints.maxHeight * .005,
                    ),
                    child: Text(
                      values[index],
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: constraints.maxHeight * .022,
                        color:
                            status[index] ? AppPalette.GREEN : AppPalette.RED,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("assets/header.png"),
          const SizedBox(height: 30),
          BaseProfileButton(
            constraints: widget.constraints,
            height: .2,
            widget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: widget.constraints.maxHeight * .01),
                const Text("Felipe Kurt Pohling"),
                SizedBox(height: widget.constraints.maxHeight * .06),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Saldo disponível: "),
                        const SizedBox(height: 10),
                        Text(
                          "R\$${AppController.instance.user.accountBalance}",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: widget.constraints.maxHeight * .025,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: widget.constraints.maxWidth * .04,
                        top: 12,
                      ),
                      child: InkWell(
                        onTap: () => AlertDialogs.updateAccountBalance(
                          context,
                          widget.constraints,
                          "Atualizar Saldo",
                          accountBalanceController,
                        ).show().then((value) {
                          setState(() {});
                        }),
                        child: Container(
                          height: 35,
                          width: widget.constraints.maxWidth * .3,
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
                    ),
                  ],
                ),
              ],
            ),
            icon: Icons.wallet,
          ),
          const SizedBox(height: 50),
          BaseKitBox(
            constraints: widget.constraints,
            kitName: "Visão Geral",
            height: 280,
            widget: Column(
              children: [
                SizedBox(height: widget.constraints.maxHeight * .03),
                SizedBox(
                  height: widget.constraints.maxHeight * .32,
                  width: widget.constraints.maxWidth,
                  child: ListView.builder(
                    itemCount: topics.length,
                    itemBuilder: (context, index) {
                      return buildTopic(index, widget.constraints);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
