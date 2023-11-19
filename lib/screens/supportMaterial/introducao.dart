import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projeto_financeiro/utils/constants/appPalette.dart';
import 'package:projeto_financeiro/utils/materialMethods.dart';
import 'package:projeto_financeiro/widgets/header.dart';

class Introducao extends StatefulWidget {
  const Introducao({super.key});

  @override
  State<Introducao> createState() => _IntroducaoState();
}

class _IntroducaoState extends State<Introducao> {
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
                    title: "Introdução",
                    isNewScreen: true,
                  ),
                  const SizedBox(height: 20),
                  MaterialMethods.buildTopic(
                    "Introdução",
                    "A educação financeira é crucial para jovens adultos enfrentarem os desafios econômicos. Este guia abordará conceitos essenciais e práticas para promover uma gestão financeira sólida.",
                  ),
                  const SizedBox(height: 20),
                  MaterialMethods.buildTopic(
                    "Conceitos Básicos",
                    "Explore temas como renda, despesas, poupança e investimentos. Compreender esses fundamentos é fundamental para tomar decisões financeiras informadas e construir uma base sólida.",
                  ),
                  const SizedBox(height: 20),
                  MaterialMethods.buildTopic(
                    "Orçamento e Controle de Gastos",
                    "A criação de um orçamento detalhado é essencial. Identifique receitas, estabeleça metas de gastos e monitore regularmente. Controle de gastos ajuda a evitar dívidas e a manter o equilíbrio financeiro.",
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
