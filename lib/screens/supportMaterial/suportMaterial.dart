import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projeto_financeiro/utils/constants/appPalette.dart';
import 'package:projeto_financeiro/utils/constants/appRoutes.dart';

import '../../widgets/baseProfileButton.dart';
import '../../widgets/header.dart';

class SuportMaterial extends StatefulWidget {
  const SuportMaterial({super.key});

  @override
  State<SuportMaterial> createState() => _SuportMaterialState();
}

class _SuportMaterialState extends State<SuportMaterial> {
  Widget buildProfileButton(
    String title,
    String subText,
    IconData icon,
    double height,
    BoxConstraints constraints,
  ) {
    return BaseProfileButton(
      constraints: constraints,
      height: height,
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          Text(
            title,
            style: const TextStyle(
              color: AppPalette.LOW_OPACITY_BLACK,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            subText,
            style: const TextStyle(
              color: AppPalette.CONTRAST_COLOR,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ],
      ),
      icon: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppPalette.BACKGROUND_COLOR,
        resizeToAvoidBottomInset: false,
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
                      title: "Material de Apoio",
                      isNewScreen: true,
                    ),
                    const SizedBox(height: 40),
                    InkWell(
                      onTap: () =>
                          Navigator.of(context).pushNamed(AppRoutes.INTRODUCAO),
                      child: buildProfileButton(
                        "Introdução",
                        "placeholder",
                        Icons.book,
                        .15,
                        constraints,
                      ),
                    ),
                    const SizedBox(height: 25),
                    InkWell(
                      onTap: () => Navigator.of(context)
                          .pushNamed(AppRoutes.ESTUDO_E_BUSCA_DE_CONHECIMENTO),
                      child: buildProfileButton(
                        "Estudo e Busca de conhecimento",
                        "placeholder",
                        Icons.book,
                        .15,
                        constraints,
                      ),
                    ),
                    const SizedBox(height: 25),
                    InkWell(
                      onTap: () => Navigator.of(context)
                          .pushNamed(AppRoutes.GESTAO_DE_DIVIDAS),
                      child: buildProfileButton(
                        "Gestão de Dívidas",
                        "placeholder",
                        Icons.book,
                        .15,
                        constraints,
                      ),
                    ),
                    const SizedBox(height: 25),
                    InkWell(
                      onTap: () => Navigator.of(context)
                          .pushNamed(AppRoutes.INVESTIMENTOS),
                      child: buildProfileButton(
                        "Investimentos",
                        "placeholder",
                        Icons.book,
                        .15,
                        constraints,
                      ),
                    ),
                    const SizedBox(height: 25),
                    InkWell(
                      onTap: () => Navigator.of(context)
                          .pushNamed(AppRoutes.RESERVA_DE_EMERGENCIA),
                      child: buildProfileButton(
                        "Reserva de emergência",
                        "placeholder",
                        Icons.book,
                        .15,
                        constraints,
                      ),
                    ),
                    const SizedBox(height: 25),
                    InkWell(
                      onTap: () => Navigator.of(context).pushNamed(
                          AppRoutes.DESENV_PROFISSIONAL_E_FINANCEIRO),
                      child: buildProfileButton(
                        "Desenv Profissional e Financeiro",
                        "placeholder",
                        Icons.book,
                        .15,
                        constraints,
                      ),
                    ),
                    const SizedBox(height: 25),
                    InkWell(
                      onTap: () => Navigator.of(context)
                          .pushNamed(AppRoutes.ESTUDO_DE_CASO_E_ATV_PRATICA),
                      child: buildProfileButton(
                        "Estudo de caso e atv prática",
                        "placeholder",
                        Icons.book,
                        .15,
                        constraints,
                      ),
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
