import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projeto_financeiro/utils/materialMethods.dart';
import 'package:projeto_financeiro/widgets/header.dart';

import '../../utils/constants/appPalette.dart';

class EstudoDeCasoEAtvPratica extends StatefulWidget {
  const EstudoDeCasoEAtvPratica({super.key});

  @override
  State<EstudoDeCasoEAtvPratica> createState() =>
      _EstudoDeCasoEAtvPraticaState();
}

class _EstudoDeCasoEAtvPraticaState extends State<EstudoDeCasoEAtvPratica> {
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
                      title: "Estudo de caso e atv prática",
                      isNewScreen: true,
                    ),
                    MaterialMethods.buildBaseText(
                      "O Estudo de caso é uma metodologia de ensino e aprendizado que envolve a análise detalhada de uma situação específica ou problema do mundo real. Geralmente, é usado para explorar questões complexas e permitir que os participantes apliquem teorias e conhecimentos em situações concretas. Alguns pontos cruciais são:",
                    ),
                    const SizedBox(height: 10),
                    MaterialMethods.buildTopic(
                      "Descrição da Situação:",
                      "Detalhar o contexto, os personagens envolvidos e os elementos-chave do caso.",
                    ),
                    const SizedBox(height: 10),
                    MaterialMethods.buildTopic(
                      "Identificação de Problemas/Desafios:",
                      "Analisar os problemas ou desafios presentes na situação apresentada.",
                    ),
                    const SizedBox(height: 10),
                    MaterialMethods.buildTopic(
                      "Análise e Discussão:",
                      "Aplicar teorias e conceitos relevantes para analisar a situação e propor soluções.",
                    ),
                    const SizedBox(height: 10),
                    MaterialMethods.buildTopic(
                      "Tomada de Decisão:",
                      "Identificar opções e tomar decisões embasadas com base na análise do caso.",
                    ),
                    const SizedBox(height: 10),
                    MaterialMethods.buildTopic(
                      "Lições Aprendidas: ",
                      "Extrair aprendizados e insights que podem ser aplicados em situações semelhantes no futuro.",
                    ),
                    const SizedBox(height: 10),
                    MaterialMethods.buildBaseText(
                      "Quanto às Atividades práticas, referem-se a exercícios ou tarefas concretas realizadas para aplicar conhecimentos teóricos na prática. Essas atividades são fundamentais para o desenvolvimento de habilidades e competências.",
                    ),
                    const SizedBox(height: 10),
                    MaterialMethods.buildBaseText(
                      "• Hands-on (Aprendizado Prático): Envolver-se em experiências práticas para aplicar conceitos teóricos.",
                    ),
                    MaterialMethods.buildBaseText(
                      "• Resolução de Problemas: Enfrentar desafios reais ou simulados para desenvolver habilidades de resolução de problemas.",
                    ),
                    MaterialMethods.buildBaseText(
                      "• Aplicação de Teorias: Utilizar o conhecimento adquirido para realizar tarefas específicas ou projetos.",
                    ),
                    MaterialMethods.buildBaseText(
                      "• Feedback e Reflexão: Receber feedback sobre o desempenho e refletir sobre o que foi aprendido durante a atividade.",
                    ),
                    MaterialMethods.buildBaseText(
                      "• Colaboração e Trabalho em Equipe: Participar de atividades que incentivem a colaboração e a cooperação para atingir objetivos comuns.",
                    ),
                    MaterialMethods.buildBaseText(
                      "Ambos os métodos são valiosos para o aprendizado, pois proporcionam oportunidades para os participantes aplicarem teorias em situações reais e adquirirem experiência prática, facilitando a compreensão e o desenvolvimento de habilidades.",
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
