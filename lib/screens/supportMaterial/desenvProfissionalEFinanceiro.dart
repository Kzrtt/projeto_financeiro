import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projeto_financeiro/utils/materialMethods.dart';
import 'package:projeto_financeiro/widgets/header.dart';

import '../../utils/constants/appPalette.dart';

class DesenvProfissionalEFinanceiro extends StatefulWidget {
  const DesenvProfissionalEFinanceiro({super.key});

  @override
  State<DesenvProfissionalEFinanceiro> createState() =>
      _DesenvProfissionalEFinanceiroState();
}

class _DesenvProfissionalEFinanceiroState
    extends State<DesenvProfissionalEFinanceiro> {
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Header(
                      constraints: constraints,
                      title: "Desenv Profissional e Financeiro",
                      isNewScreen: true,
                    ),
                    const SizedBox(height: 10),
                    MaterialMethods.buildBaseText(
                      "No Desenvolvimento profissional nada mais é que o processo contínuo de aprimorar habilidades, conhecimentos e experiências relacionadas à sua carreira. Como por exemplo: ",
                    ),
                    const SizedBox(height: 10),
                    MaterialMethods.buildTopic(
                      "Educação Continuada:",
                      "Buscar constantemente aprender e se atualizar sobre as tendências, tecnologias e avanços em sua área de atuação.",
                    ),
                    const SizedBox(height: 10),
                    MaterialMethods.buildTopic(
                      "Habilidades Interpessoais:",
                      "Desenvolver habilidades de comunicação, trabalho em equipe, liderança e resolução de conflitos.",
                    ),
                    const SizedBox(height: 10),
                    MaterialMethods.buildTopic(
                      "Networking:",
                      "Construir e manter uma rede de contatos profissionais que possam oferecer suporte, oportunidades e colaboração.",
                    ),
                    const SizedBox(height: 10),
                    MaterialMethods.buildTopic(
                      "Gerenciamento de Tempo:",
                      "Aprender a gerenciar efetivamente o tempo para priorizar tarefas e alcançar metas profissionais.",
                    ),
                    const SizedBox(height: 10),
                    MaterialMethods.buildTopic(
                      "Planejamento de Carreira: ",
                      "Definir metas de curto e longo prazo, identificar oportunidades de crescimento e planejar passos para alcançar esses objetivos",
                    ),
                    const SizedBox(height: 10),
                    MaterialMethods.buildBaseText(
                      "Já o Desenvolvimento financeiro envolve a busca por conhecimento e habilidades para gerir as finanças pessoais de forma eficaz. Isso requer compreensão de como:",
                    ),
                    const SizedBox(height: 10),
                    MaterialMethods.buildTopic(
                      "Orçamento e Controle de Gastos:",
                      "Criar um orçamento que permita o controle eficaz das finanças, incluindo despesas e receitas.",
                    ),
                    const SizedBox(height: 10),
                    MaterialMethods.buildTopic(
                      "Poupança e Investimento:",
                      "Estabelecer metas de poupança e aprender sobre investimentos para aumentar o patrimônio ao longo do tempo.",
                    ),
                    const SizedBox(height: 10),
                    MaterialMethods.buildTopic(
                      "Redução de Dívidas:",
                      "Desenvolver estratégias para pagar dívidas e evitar altos encargos financeiros.",
                    ),
                    const SizedBox(height: 10),
                    MaterialMethods.buildTopic(
                      "Educação Financeira:",
                      "Aprender sobre conceitos básicos de finanças, como juros, inflação, diversificação de investimentos, entre outros.",
                    ),
                    const SizedBox(height: 10),
                    MaterialMethods.buildTopic(
                      "Planejamento para o Futuro: ",
                      "Criar um plano financeiro de longo prazo, incluindo aposentadoria, seguro e emergências.",
                    ),
                    const SizedBox(height: 10),
                    MaterialMethods.buildTopic(
                      "Planejamento para o Futuro: ",
                      "Criar um plano financeiro de longo prazo, incluindo aposentadoria, seguro e emergências.",
                    ),
                    const SizedBox(height: 10),
                    MaterialMethods.buildBaseText(
                      "Em resumo, ambos os desenvolvimentos são cruciais para uma vida equilibrada e bem-sucedida, pois complementam-se: o crescimento profissional frequentemente se reflete em maior estabilidade financeira, enquanto um melhor controle financeiro pode proporcionar oportunidades para o crescimento profissional e pessoal.",
                    ),
                    const SizedBox(height: 100),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
