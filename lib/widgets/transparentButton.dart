import 'package:flutter/material.dart';
import 'package:projeto_financeiro/utils/constants/appPalette.dart';

class TransparentButton extends StatelessWidget {
  BoxConstraints constraints;
  String text;
  IconData icon;
  double width;
  void Function() onTap;
  Color? color;

  TransparentButton({
    super.key,
    required this.constraints,
    required this.text,
    required this.icon,
    required this.width,
    required this.onTap,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 50,
          width: constraints.maxWidth * .7,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: color ?? AppPalette.PRIMARY_COLOR,
              width: 2,
            ),
          ),
          child: Row(
            children: [
              SizedBox(width: constraints.maxWidth * .04),
              Icon(
                icon,
                color: color ?? AppPalette.PRIMARY_COLOR,
              ),
              SizedBox(
                width: constraints.maxWidth * width,
              ),
              Text(
                text,
                style: TextStyle(
                  color: color ?? AppPalette.PRIMARY_COLOR,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
