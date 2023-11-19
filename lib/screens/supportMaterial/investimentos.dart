import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projeto_financeiro/utils/materialMethods.dart';
import 'package:projeto_financeiro/widgets/header.dart';

import '../../utils/constants/appPalette.dart';

class Investimentos extends StatefulWidget {
  const Investimentos({super.key});

  @override
  State<Investimentos> createState() => _InvestimentosState();
}

class _InvestimentosState extends State<Investimentos> {
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
                      title: "Investimentos",
                      isNewScreen: true,
                    ),
                    MaterialMethods.buildBaseText(
                      "Investimentos referem-se à alocação de recursos, geralmente dinheiro, em ativos com a expectativa de obter retorno financeiro ao longo do tempo. O objetivo dos investimentos é fazer com que o dinheiro cresça, preserve seu valor ou gere renda. Existem diversas formas de investir, e os investidores escolhem diferentes estratégias com base em seus objetivos financeiros, tolerância ao risco e horizonte de tempo. \n\nAqui estão alguns tipos comuns de investimentos: ",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "1.	Ações: ",
                      "Investir em ações significa comprar uma participação em uma empresa. Os investidores esperam que o valor das ações aumente ao longo do tempo, permitindo que eles vendam as ações a um preço mais alto do que o preço de compra inicial.",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "2.	Títulos: ",
                      "Títulos são instrumentos de dívida emitidos por governos, empresas ou entidades. Os investidores compram títulos e, em troca, recebem juros ao longo do tempo, além do valor principal investido.",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "3.	Fundos de Investimento: ",
                      "São pools de dinheiro gerenciados por profissionais que investem em uma variedade de ativos, como ações, títulos e outros instrumentos financeiros. Os investidores compram cotas desses fundos.",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "4.	Imóveis: ",
                      "Investir em imóveis envolve comprar propriedades com o objetivo de obter retorno financeiro, seja através da valorização do imóvel ou da geração de renda por meio de aluguel.",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "5.	Investimentos Alternativos: ",
                      "Além dos investimentos mais tradicionais, existem opções alternativas, como investir em commodities, criptomoedas, startups, entre outros.",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "6.	Poupança: ",
                      "Embora seja mais conservadora, a poupança em uma conta bancária é uma forma de investimento de baixo risco. Os juros são geralmente menores em comparação com outros investimentos, mas o capital é mais seguro.",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildOnlyTopic("Por onde começar?"),
                    const SizedBox(height: 10),
                    MaterialMethods.buildBaseText(
                      "Começar a investir pode parecer desafiador, mas é possível dar os primeiros passos de maneira sólida. Antes de investir, é crucial estabelecer objetivos financeiros claros, como comprar uma casa, planejar a aposentadoria ou custear a educação dos filhos. Avaliar suas finanças pessoais e criar um orçamento ajudará a determinar quanto dinheiro você pode destinar para investir regularmente, sem comprometer suas despesas básicas. \n\nÉ fundamental conhecer seu perfil de investidor, entendendo sua tolerância ao risco. Existem diferentes tipos de investimentos, cada um com seu próprio nível de volatilidade. A educação financeira desempenha um papel crucial nesse processo. Ler livros, artigos financeiros e participar de cursos online são maneiras eficazes de aumentar seu conhecimento sobre o assunto. \n\nAntes de se aventurar em investimentos mais arriscados, é aconselhável criar uma reserva de emergência, garantindo dinheiro suficiente para cobrir despesas essenciais por pelo menos três a seis meses. Ao decidir investir, escolha uma corretora confiável e abra uma conta de investimento. As corretoras online oferecem plataformas fáceis de usar para comprar e vender ativos financeiros. \n\nA diversificação é uma prática importante para reduzir o risco da carteira. Evite colocar todo o seu dinheiro em um único investimento. Para iniciantes, começar com opções mais simples, como fundos de índice (ETFs), pode ser uma abordagem sensata. Monitore regularmente seus investimentos, faça ajustes conforme necessário e reavalie seus objetivos periodicamente. O mercado financeiro está em constante mudança, portanto, manter-se informado é essencial para tomar decisões bem fundamentadas. Se necessário, busque a orientação de um profissional financeiro para ajudar a orientar suas decisões de investimento.\n\nLembre-se de que investir envolve riscos, e é importante estar preparado para as flutuações do mercado. ",
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
