import 'package:flutter/material.dart';
import 'package:projeto_financeiro/utils/constants/appPalette.dart';

class BaseProfileButton extends StatelessWidget {
  final BoxConstraints constraints;
  final double height;
  final Widget widget;
  final IconData icon;

  const BaseProfileButton({
    super.key,
    required this.constraints,
    required this.height,
    required this.widget,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: constraints.maxHeight * height,
      width: constraints.maxWidth * .92,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Row(
            children: [
              Container(
                height: constraints.maxHeight * height,
                width: constraints.maxWidth * .05,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(20),
                  ),
                  color: AppPalette.PRIMARY_COLOR,
                ),
              ),
              SizedBox(width: constraints.maxWidth * .03),
              Container(
                height: constraints.maxHeight * height,
                width: constraints.maxWidth * .84,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: constraints.maxHeight * .01),
                    widget,
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: constraints.maxHeight * .01,
            left: constraints.maxWidth * .82,
            child: Icon(
              icon,
              color: AppPalette.CONTRAST_COLOR,
              size: constraints.maxHeight * .04,
            ),
          ),
        ],
      ),
    );
  }
}
