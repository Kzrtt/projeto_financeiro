import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projeto_financeiro/utils/constants/appPalette.dart';
import 'package:projeto_financeiro/utils/materialMethods.dart';
import 'package:projeto_financeiro/widgets/header.dart';

class EstudoEBuscaDeConhecimento extends StatefulWidget {
  const EstudoEBuscaDeConhecimento({super.key});

  @override
  State<EstudoEBuscaDeConhecimento> createState() =>
      _EstudoEBuscaDeConhecimentoState();
}

class _EstudoEBuscaDeConhecimentoState
    extends State<EstudoEBuscaDeConhecimento> {
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
                      title: "Estudo e Busca de Conhecimento",
                      isNewScreen: true,
                    ),
                    MaterialMethods.buildBaseText(
                      "Investir é uma jornada empolgante que pode abrir portas para um futuro financeiro mais seguro e próspero. Se você, jovem investidor em potencial, está considerando entrar no mundo dos investimentos, é importante que você saiba que o estudo e a busca constante de conhecimento são os alicerces de um caminho bem-sucedido. Aqui estão algumas razões pelas quais a aprendizagem contínua é essencial nessa jornada:",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "1. Conhecimento é poder: ",
                      "Antes de investir seu dinheiro, é fundamental entender os conceitos básicos. Saiba o que são ações, títulos, fundos mútuos, ETFs e outras opções de investimento. Compreender os riscos e recompensas associados a cada um deles é crucial para tomar decisões informadas.",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "2. Gerenciar riscos: ",
                      "O mercado financeiro é volátil e imprevisível. O conhecimento pode ajudá-lo a identificar riscos e tomar medidas para mitigá-los. Quando você compreende as estratégias de diversificação e a gestão de portfólio, pode proteger seu capital de maneira mais eficaz.",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "3. Evitar armadilhas:",
                      "Há muitos golpes e armadilhas no mundo dos investimentos. Quando você estuda e mantém-se atualizado, pode identificar potenciais fraudes e tomar decisões financeiras mais seguras.",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "4. Melhores escolhas de investimento: ",
                      "A pesquisa e o estudo constante ajudam a escolher os investimentos que se alinham com seus objetivos financeiros e seu perfil de risco. Seja a curto ou a longo prazo, a compreensão das oportunidades disponíveis ajuda você a tomar decisões informadas.",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "5. Adaptar-se às mudanças: ",
                      "O mundo dos investimentos está em constante evolução. O que é lucrativo hoje pode não ser amanhã. Manter-se atualizado com as tendências do mercado e as mudanças econômicas permite que você ajuste sua estratégia de acordo com as circunstâncias.",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "6. Aumentar seus ganhos: ",
                      "À medida que você aprende mais sobre os investimentos, suas habilidades aumentam. Isso pode levar a escolhas mais inteligentes, maior retorno sobre o investimento e, no longo prazo, a uma situação financeira mais saudável.",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "7. Confiar em si mesmo: ",
                      "Quando você estuda e ganha conhecimento, ganha confiança em suas decisões financeiras. A confiança é essencial para manter a calma em momentos de volatilidade do mercado e evitar a tomada de decisões impulsivas.",
                    ),
                    const SizedBox(height: 20),
                    MaterialMethods.buildTopic(
                      "Por onde começar? ",
                      "Iniciar sua jornada de aprendizado pode parecer esmagador, mas há muitos recursos disponíveis para você. Considere a leitura de livros, a participação em cursos on-line, a busca de mentores, o acompanhamento das notícias financeiras e a análise de investimentos anteriores. Lembre-se de que o estudo é uma jornada contínua, e o conhecimento é uma das melhores ferramentas que você pode ter em seu arsenal.",
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
