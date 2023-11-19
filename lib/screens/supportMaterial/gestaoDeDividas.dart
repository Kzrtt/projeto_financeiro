import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projeto_financeiro/utils/constants/appPalette.dart';

import '../../utils/materialMethods.dart';
import '../../widgets/header.dart';

class GestaoDeDividas extends StatefulWidget {
  const GestaoDeDividas({super.key});

  @override
  State<GestaoDeDividas> createState() => _GestaoDeDividasState();
}

class _GestaoDeDividasState extends State<GestaoDeDividas> {
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Header(
                      constraints: constraints,
                      title: "Gestão de Dívidas",
                      isNewScreen: true,
                    ),
                    MaterialMethods.buildBaseText(
                      "A gestão de dívidas é um aspecto crucial da saúde financeira pessoal. Se você está lidando com dívidas ou deseja evitar cair nessa armadilha financeira, é essencial entender o que é a gestão de dívidas e como implementá-la em sua vida. Aqui estão algumas informações importantes sobre o tema:",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "O que é gestão de dívidas?",
                      "A gestão de dívidas é o processo de gerenciar todas as dívidas pessoais de forma eficaz. Isso inclui o pagamento de empréstimos, cartões de crédito, hipotecas e outras obrigações financeiras. O objetivo da gestão de dívidas é evitar o endividamento excessivo, reduzir a carga de dívidas e, em última análise, alcançar a liberdade financeira.",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildOnlyTopic(
                      "Princípios-chave da gestão de dívidas:",
                    ),
                    const SizedBox(height: 40),
                    MaterialMethods.buildTopic(
                      "Orçamento e planejamento:",
                      "O primeiro passo para a gestão de dívidas é criar um orçamento sólido. Isso envolve acompanhar todas as despesas e receitas, identificar áreas de economia e estabelecer metas financeiras realistas.",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "Priorização de dívidas: ",
                      "É importante entender quais dívidas têm as taxas de juros mais altas. Priorize o pagamento das dívidas com taxas de juros elevadas, como cartões de crédito, para evitar o acúmulo de juros.",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "Negociação: ",
                      "Em muitos casos, é possível negociar para obter condições de pagamento mais favoráveis, como taxas de juros reduzidas ou planos de pagamento revisados.",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "Consolidação de dívidas: ",
                      "Considerar a consolidação de dívidas pode ser uma estratégia eficaz. Isso envolve a obtenção de um novo empréstimo para pagar várias dívidas existentes, muitas vezes a uma taxa de juros mais baixa.",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "Pagamentos regulares: ",
                      "Mantenha o compromisso de fazer pagamentos regulares e consistentes em suas dívidas. Isso ajudará a manter seus credores satisfeitos e melhorar sua pontuação de crédito.",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "Corte de despesas: ",
                      "Reduza despesas não essenciais sempre que possível para liberar mais dinheiro para pagar dívidas.",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "Educação financeira: ",
                      "Invista tempo na educação financeira para entender os princípios básicos de finanças pessoais, como investimentos, economia de dinheiro e gerenciamento de riscos.",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildOnlyTopic(
                      "Benefícios da gestão de dívidas:",
                    ),
                    const SizedBox(height: 40),
                    MaterialMethods.buildTopic(
                      "•	Redução do estresse financeiro: ",
                      "Gerenciar suas dívidas eficazmente pode aliviar o estresse financeiro, proporcionando mais tranquilidade.",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "•	Economia a longo prazo: ",
                      "Pagar dívidas com juros elevados mais rapidamente economiza dinheiro a longo prazo.",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "•	Melhora da pontuação de crédito: ",
                      "Manter pagamentos em dia e reduzir dívidas em aberto pode melhorar sua pontuação de crédito, o que pode ser vantajoso em futuras transações financeiras.",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "•	Preparação para o futuro:  ",
                      "A gestão de dívidas eficaz coloca você em uma posição melhor para alcançar objetivos financeiros, como comprar uma casa, poupar para a aposentadoria e investir.",
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
