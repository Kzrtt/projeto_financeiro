import 'package:flutter/material.dart';
import 'package:projeto_financeiro/utils/constants/appPalette.dart';

class BaseKitBox extends StatelessWidget {
  final BoxConstraints constraints;
  final String kitName;
  final double height;
  final Widget widget;
  const BaseKitBox({
    super.key,
    required this.constraints,
    required this.kitName,
    required this.height,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: constraints.maxWidth * .92,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red,
      ),
      child: Column(
        children: [
          //* Container de cima (parte azul com nome do kit)
          Container(
            height: 46.9,
            width: constraints.maxWidth,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              color: AppPalette.PRIMARY_COLOR,
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                kitName,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          //* Container de baixo
          Container(
            height: height - 46.9,
            width: constraints.maxWidth,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
              color: Colors.white,
            ),
            child: widget,
          ),
        ],
      ),
    );
  }
}
