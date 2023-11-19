import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projeto_financeiro/widgets/header.dart';

import '../../utils/constants/appPalette.dart';
import '../../utils/materialMethods.dart';

class ReservaDeEmergencia extends StatefulWidget {
  const ReservaDeEmergencia({super.key});

  @override
  State<ReservaDeEmergencia> createState() => _ReservaDeEmergenciaState();
}

class _ReservaDeEmergenciaState extends State<ReservaDeEmergencia> {
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
                      title: "Reserva de Emergência",
                      isNewScreen: true,
                    ),
                    MaterialMethods.buildBaseText(
                      "Uma reserva de emergência é uma quantia destinada a cobrir despesas inesperadas ou emergenciais, fornecendo uma rede de segurança financeira. A principal finalidade dessa reserva é permitir que você lide com despesas inesperadas sem recorrer a empréstimos ou comprometer seus investimentos de longo prazo.\n\nA reserva de emergência é uma parte fundamental do planejamento financeiro pessoal e oferece proteção contra eventos imprevistos, como despesas médicas inesperadas, reparos urgentes em casa, perda de emprego ou outras situações que podem impactar adversamente suas finanças.\n\nAconselha-se que a reserva de emergência cubra, pelo menos, três a seis meses de despesas essenciais. Isso inclui itens como moradia, alimentação, contas de serviços públicos, transporte e outros gastos essenciais mensais. O objetivo é proporcionar uma margem de segurança financeira suficiente para enfrentar períodos de instabilidade sem recorrer a soluções financeiras prejudiciais, como endividamento com juros altos.\n\nA reserva de emergência é geralmente mantida em contas bancárias de fácil acesso e liquidez, como contas poupança ou contas correntes. Embora o retorno financeiro dessas contas seja geralmente menor em comparação com investimentos mais arriscados, a liquidez imediata é uma característica crucial, permitindo que o dinheiro esteja prontamente disponível quando necessário.\n\nAo estabelecer uma reserva de emergência, considere fatores como seus gastos mensais, a estabilidade do seu emprego e outras circunstâncias pessoais. Periodicamente, reavalie sua reserva de emergência para garantir que ela esteja alinhada com sua situação financeira atual e faça ajustes conforme necessário.\n\nAqui está um passo a passo de como montar sua reserva de emergência, utilizando um planejamento financeiro:",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "1.	Avalie suas Despesas Mensais: ",
                      "Liste todas as suas despesas mensais essenciais, como moradia, alimentação, contas de serviços públicos, transporte e despesas médicas. Calcule o valor total dessas despesas.",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "2. Determine a Meta da Reserva de Emergência: ",
                      "Estabeleça um objetivo para a sua reserva de emergência, geralmente entre três a seis meses do total de suas despesas mensais. Isso proporcionará uma rede de segurança adequada para enfrentar situações imprevistas.",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "3.	Analise seu Orçamento: ",
                      "Revise seu orçamento para identificar áreas onde você pode economizar e direcionar fundos para sua reserva de emergência. Considere cortar despesas não essenciais.",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "4.	Abra uma Conta Específica: ",
                      "Crie uma conta específica para sua reserva de emergência. Pode ser uma conta poupança ou uma conta corrente com fácil acesso aos fundos.",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "5.	Estabeleça um Plano de Contribuição Mensal: ",
                      "Determine uma quantia que você pode alocar mensalmente para sua reserva de emergência. Se possível, automatize as contribuições para garantir consistência.",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "6.	Utilize Rendas Extras: ",
                      "Considere direcionar rendas extras, como bônus, restituição de imposto ou outros ganhos inesperados, para aumentar sua reserva de emergência.",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "7.	Evite a Tentação de Toque: ",
                      "Mantenha a disciplina. A reserva de emergência é para situações críticas. Evite tocá-la para despesas não essenciais.",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "8.	Revise e Atualize Regularmente: ",
                      "Periodicamente, reveja sua situação financeira e ajuste a meta da reserva de emergência, se necessário. Isso é especialmente importante quando há mudanças significativas em sua vida financeira.",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "9.	Considere Investimentos de Curto Prazo: ",
                      "Se sua reserva de emergência atingir um nível confortável, considere investir o excedente em opções de curto prazo com fácil liquidez.",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "10.	Fique Atento às Mudanças na Vida: ",
                      "Situações como mudanças no emprego, despesas médicas inesperadas ou outras mudanças significativas na vida podem afetar suas necessidades de reserva de emergência. Esteja preparado para ajustar conforme necessário.",
                    ),
                    MaterialMethods.buildBaseText(
                      "Lembre-se, a reserva de emergência é uma parte essencial do seu plano financeiro. Ela fornece segurança e tranquilidade, permitindo que você enfrente desafios financeiros sem comprometer seus objetivos de longo prazo.",
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
