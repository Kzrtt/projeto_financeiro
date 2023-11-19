import 'package:flutter/material.dart';
import 'package:projeto_financeiro/utils/constants/appPalette.dart';

class Header extends StatelessWidget {
  final BoxConstraints constraints;
  final String title;
  bool isNewScreen;

  Header({
    super.key,
    required this.constraints,
    required this.title,
    required this.isNewScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: constraints.maxHeight * .15,
          width: constraints.maxWidth,
          child: Image.asset(
            "assets/header.png",
            fit: BoxFit.fill,
          ),
        ),
        isNewScreen
            ? Positioned(
                top: constraints.maxHeight * .02,
                left: constraints.maxWidth * .02,
                child: InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.white,
                  ),
                ),
              )
            : Center(),
        Positioned(
          top: constraints.maxHeight * .09,
          right: 5,
          child: SizedBox(
            height: 20,
            width: constraints.maxWidth * .6,
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.end,
              style: TextStyle(
                color: AppPalette.CONTRAST_COLOR,
                fontWeight: FontWeight.w700,
                fontSize: constraints.maxHeight * .028,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
