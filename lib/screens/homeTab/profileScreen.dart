import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projeto_financeiro/utils/appController.dart';
import 'package:projeto_financeiro/utils/constants/appPalette.dart';
import 'package:projeto_financeiro/utils/constants/appRoutes.dart';
import 'package:projeto_financeiro/widgets/baseProfileButton.dart';

class ProfileScreen extends StatefulWidget {
  BoxConstraints constraints;
  ProfileScreen({
    required this.constraints,
    super.key,
  });

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Widget buildProfileButton(
    String title,
    String subText,
    IconData icon,
    double height,
  ) {
    return BaseProfileButton(
      constraints: widget.constraints,
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
    return Padding(
      padding: EdgeInsets.only(left: widget.constraints.maxWidth * .05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Usuário: ${AppController.instance.user.name} ",
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: AppPalette.LOW_OPACITY_BLACK,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: InkWell(
                  onTap: () => Navigator.of(context)
                      .pushReplacementNamed(AppRoutes.OPENING_SCREEN),
                  child: const Icon(
                    Icons.logout,
                    color: AppPalette.RED,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            "Profissão: ${AppController.instance.user.profession}",
            style: const TextStyle(
              color: AppPalette.CONTRAST_COLOR,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 50),
          InkWell(
            onTap: () => Navigator.of(context).pushNamed(AppRoutes.UPDATE_INFO),
            child: buildProfileButton(
              "Alterar Cadastro",
              "Altere seus dados",
              Icons.person,
              .15,
            ),
          ),
          const SizedBox(height: 30),
          buildProfileButton(
            "Material de Apoio",
            "Textos para te auxiliar a economizar",
            Icons.book,
            .15,
          ),
          const SizedBox(height: 30),
          buildProfileButton(
            "Perguntas Frequentes",
            "Pergutas frequentes sobre economia",
            Icons.question_mark,
            .15,
          ),
          const SizedBox(height: 30),
          InkWell(
            onTap: () =>
                Navigator.of(context).pushNamed(AppRoutes.ASK_QUESTION),
            child: buildProfileButton(
              "Envie uma Pergunta",
              "Envie uma pergunta para nossos especialistas",
              Icons.support_agent,
              .17,
            ),
          ),
        ],
      ),
    );
  }
}
