import 'package:flutter/material.dart';

import 'constants/appPalette.dart';

class MaterialMethods {
  static Widget buildBaseText(String text) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Text(
        text,
        textAlign: TextAlign.justify,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }

  static Widget buildTopic(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            title,
            style: const TextStyle(
              color: AppPalette.CONTRAST_COLOR,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            content,
            textAlign: TextAlign.justify,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }

  static Widget buildOnlyTopic(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            title,
            style: const TextStyle(
              color: AppPalette.PRIMARY_COLOR,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
