import 'package:flutter/material.dart';
import 'package:projeto_financeiro/utils/constants/appPalette.dart';

class DropdownTextForm extends StatelessWidget {
  final BoxConstraints constraints;
  final List<String> dropdownItems;
  final String selectedItem;
  final String hintText;
  final bool? isEnabled;
  final void Function(String? text)? onSaved;
  final void Function(String? value)? onChanged;
  final String? Function(String? text)? validator;

  const DropdownTextForm({
    required this.constraints,
    required this.dropdownItems,
    required this.hintText,
    required this.selectedItem,
    this.onSaved,
    this.validator,
    this.onChanged,
    this.isEnabled,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: constraints.maxWidth * .9,
      child: DropdownButtonFormField<String>(
        isDense: true,
        isExpanded: true,
        validator: validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        icon: const Icon(
          Icons.keyboard_arrow_down_rounded,
          color: AppPalette.PRIMARY_COLOR,
        ),
        value: selectedItem.isNotEmpty ? selectedItem : null,
        decoration: InputDecoration(
          enabled: isEnabled ?? true,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: TextStyle(
            fontSize: constraints.maxHeight * .025,
            color: AppPalette.LOW_OPACITY_BLACK,
          ),
          filled: true,
          fillColor: Colors.white,
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppPalette.RED,
              width: constraints.maxWidth * .004,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppPalette.RED,
              width: constraints.maxWidth * .004,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppPalette.PRIMARY_COLOR,
              width: constraints.maxWidth * .004,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppPalette.PRIMARY_COLOR,
              width: constraints.maxWidth * .004,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(14),
            ),
          ),
        ),
        hint: Text(
          hintText,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: constraints.maxHeight * .018,
          ),
        ),
        onChanged: onChanged,
        onSaved: onSaved,
        items: dropdownItems
            .map(
              (e) => DropdownMenuItem(
                child: Text(e),
                value: e,
              ),
            )
            .toList(),
      ),
    );
  }
}

class CustomTextFormFieldWithHelper extends StatelessWidget {
  final BoxConstraints constraints;
  final TextEditingController? controller;
  final String? Function(String? text)? validator;
  final String hintText;
  final int? maxLength;
  final String? helperText;
  final void Function(String? text)? onSaved;
  final double? height;
  final double? width;
  final String? initialValue;
  final String label;

  const CustomTextFormFieldWithHelper({
    required this.constraints,
    this.controller,
    required this.hintText,
    this.maxLength,
    this.validator,
    this.onSaved,
    this.height,
    this.width,
    this.helperText = "",
    required this.label,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height == null ? 90 : constraints.maxHeight * height!,
      width: width == null
          ? constraints.maxWidth * .9
          : constraints.maxWidth * width!,
      child: TextSelectionTheme(
        data: const TextSelectionThemeData(
          cursorColor: AppPalette.PRIMARY_COLOR,
        ),
        child: TextFormField(
          maxLength: maxLength,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: validator,
          controller: controller,
          initialValue: initialValue,
          onSaved: onSaved,
          decoration: InputDecoration(
            helperText: helperText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            label: Text(label),
            labelStyle: TextStyle(
              fontSize: constraints.maxHeight * .025,
              color: AppPalette.LOW_OPACITY_BLACK,
            ),
            filled: true,
            fillColor: Colors.white,
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppPalette.RED,
                width: constraints.maxWidth * .004,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppPalette.RED,
                width: constraints.maxWidth * .004,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppPalette.PRIMARY_COLOR,
                width: constraints.maxWidth * .004,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppPalette.PRIMARY_COLOR,
                width: constraints.maxWidth * .004,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(14),
              ),
            ),
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: constraints.maxHeight * .02,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  final BoxConstraints constraints;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? Function(String? text)? validator;
  final String hintText;
  final int? maxLength;
  final void Function(String? text)? onSaved;
  final double? height;
  final double? width;
  final String? initialValue;
  final String label;

  const CustomTextFormField({
    required this.constraints,
    this.controller,
    required this.hintText,
    this.maxLength,
    this.validator,
    this.onSaved,
    this.height,
    this.width,
    this.focusNode,
    required this.label,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height == null ? 80 : constraints.maxHeight * height!,
      width: width == null
          ? constraints.maxWidth * .9
          : constraints.maxWidth * width!,
      child: TextSelectionTheme(
        data: const TextSelectionThemeData(
          cursorColor: AppPalette.PRIMARY_COLOR,
        ),
        child: TextFormField(
          focusNode: focusNode,
          maxLength: maxLength,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: validator,
          controller: controller,
          initialValue: initialValue,
          onSaved: onSaved,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            label: Text(label),
            labelStyle: TextStyle(
              fontSize: constraints.maxHeight * .025,
              color: AppPalette.LOW_OPACITY_BLACK,
            ),
            filled: true,
            fillColor: Colors.white,
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppPalette.RED,
                width: constraints.maxWidth * .004,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppPalette.RED,
                width: constraints.maxWidth * .004,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppPalette.PRIMARY_COLOR,
                width: constraints.maxWidth * .004,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppPalette.PRIMARY_COLOR,
                width: constraints.maxWidth * .004,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(14),
              ),
            ),
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: constraints.maxHeight * .02,
            ),
          ),
        ),
      ),
    );
  }
}

class PasswordTextField extends StatelessWidget {
  final BoxConstraints constraints;
  final TextEditingController? controller;
  final String? Function(String? text) validator;
  final String hintText;
  final void Function(String? text)? onSaved;
  final double? height;
  final double? width;
  final String label;

  const PasswordTextField({
    required this.constraints,
    this.controller,
    required this.hintText,
    required this.validator,
    required this.label,
    this.onSaved,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height == null ? 100 : constraints.maxHeight * height!,
      width: width == null
          ? constraints.maxWidth * .9
          : constraints.maxWidth * width!,
      child: TextSelectionTheme(
        data: const TextSelectionThemeData(
          cursorColor: AppPalette.PRIMARY_COLOR,
        ),
        child: TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: validator,
          controller: controller,
          onSaved: onSaved,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            label: Text(label),
            labelStyle: TextStyle(
              fontSize: constraints.maxHeight * .025,
              color: AppPalette.LOW_OPACITY_BLACK,
            ),
            filled: true,
            fillColor: Colors.white,
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppPalette.RED,
                width: constraints.maxWidth * .004,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppPalette.RED,
                width: constraints.maxWidth * .004,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppPalette.PRIMARY_COLOR,
                width: constraints.maxWidth * .004,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppPalette.PRIMARY_COLOR,
                width: constraints.maxWidth * .004,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(14),
              ),
            ),
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: constraints.maxHeight * .02,
            ),
          ),
        ),
      ),
    );
  }
}

class PasswordWithObscureTextField extends StatefulWidget {
  final BoxConstraints constraints;
  final TextEditingController? controller;
  final String? Function(String? text) validator;
  final String hintText;
  final void Function(String? text)? onSaved;
  final double? height;
  final double? width;
  final String label;

  const PasswordWithObscureTextField({
    required this.constraints,
    this.controller,
    required this.hintText,
    required this.validator,
    required this.label,
    this.onSaved,
    this.height,
    this.width,
  });

  @override
  State<PasswordWithObscureTextField> createState() =>
      _PasswordWithObscureTextFieldState();
}

class _PasswordWithObscureTextFieldState
    extends State<PasswordWithObscureTextField> {
  bool isObscured = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height == null
          ? 100
          : widget.constraints.maxHeight * widget.height!,
      width: widget.width == null
          ? widget.constraints.maxWidth * .9
          : widget.constraints.maxWidth * widget.width!,
      child: TextSelectionTheme(
        data: const TextSelectionThemeData(
          cursorColor: AppPalette.PRIMARY_COLOR,
        ),
        child: TextFormField(
          obscureText: isObscured,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: widget.validator,
          controller: widget.controller,
          onSaved: widget.onSaved,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            label: Text(widget.label),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppPalette.RED,
                width: widget.constraints.maxWidth * .004,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppPalette.RED,
                width: widget.constraints.maxWidth * .004,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppPalette.PRIMARY_COLOR,
                width: widget.constraints.maxWidth * .004,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppPalette.PRIMARY_COLOR,
                width: widget.constraints.maxWidth * .004,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(14),
              ),
            ),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscured = !isObscured;
                });
              },
              child: Icon(
                isObscured ? Icons.visibility : Icons.visibility_off,
                color: Colors.grey,
              ),
            ),
            hintText: widget.hintText,
            hintStyle: TextStyle(
              fontSize: widget.constraints.maxHeight * .02,
            ),
          ),
        ),
      ),
    );
  }
}

class ExpandableTextField extends StatelessWidget {
  final BoxConstraints constraints;
  final TextEditingController? controller;
  final String? Function(String? text) validator;
  final String hintText;
  final void Function(String? text)? onSaved;
  final double? height;
  final double? width;
  final String? initialValue;
  final String label;

  const ExpandableTextField({
    required this.constraints,
    this.controller,
    required this.hintText,
    required this.validator,
    this.onSaved,
    this.height,
    this.width,
    this.initialValue,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height == null ? 70 : 700 * height!,
      width: width == null
          ? constraints.maxWidth * .9
          : constraints.maxWidth * width!,
      child: TextSelectionTheme(
        data: const TextSelectionThemeData(
          cursorColor: AppPalette.PRIMARY_COLOR,
        ),
        child: TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: validator,
          controller: controller,
          initialValue: initialValue,
          onSaved: onSaved,
          maxLines: null,
          expands: true,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            label: Text(label),
            labelStyle: TextStyle(
              fontSize: constraints.maxHeight * .025,
              color: AppPalette.LOW_OPACITY_BLACK,
            ),
            filled: true,
            fillColor: Colors.white,
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppPalette.RED,
                width: constraints.maxWidth * .004,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppPalette.RED,
                width: constraints.maxWidth * .004,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppPalette.PRIMARY_COLOR,
                width: constraints.maxWidth * .004,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppPalette.PRIMARY_COLOR,
                width: constraints.maxWidth * .004,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(14),
              ),
            ),
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: constraints.maxHeight * .02,
            ),
          ),
        ),
      ),
    );
  }
}
