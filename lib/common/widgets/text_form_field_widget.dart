// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    Key? key,
    this.showFloatingLabel = true,
    this.controller,
    this.placeHolder,
    this.value,
    this.prefixIcon,
    this.suffixIcon,
    this.isNumber = false,
    this.isArabic = false,
    this.isEmail = false,
    this.isPassWord = false,
    this.isAutoFocus = false,
    this.isMatchController,
    this.isMatchValue,
    this.min,
    this.max,
    this.maxLines,
    this.borderRadius = 10,
    this.onFieldSubmitted,
    this.textInputAction,
    this.textInputType = TextInputType.text,
    this.onSave,
    this.padding = 0,
    this.leftPadding,
    this.rightPadding,
    this.topPadding,
    this.bottomPadding,
    this.horizontalPadding,
    this.verticalPadding,
    this.width = 1,
    this.title,
    this.readOnly = false,
  }) : super(key: key);

  final bool? showFloatingLabel;
  final TextEditingController? controller;
  final String? placeHolder;
  final String? value;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool isNumber;
  final bool isArabic;
  final bool isEmail;
  final bool isPassWord;
  final bool isAutoFocus;
  final TextEditingController? isMatchController;
  final String? isMatchValue;
  final int? min;
  final int? max;
  final int? maxLines;
  final double? borderRadius;
  final Function(String val)? onFieldSubmitted;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final Function(String? value)? onSave;
  final double padding;
  final double? leftPadding;
  final double? rightPadding;
  final double? topPadding;
  final double? bottomPadding;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double width;
  final String? title;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width / width,
      padding: EdgeInsets.fromLTRB(
        leftPadding ?? horizontalPadding ?? padding,
        topPadding ?? verticalPadding ?? padding,
        rightPadding ?? horizontalPadding ?? padding,
        bottomPadding ?? verticalPadding ?? padding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) ...{
            Text(
              title!,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 10),
          },
          TextFormField(
            keyboardType: textInputType ?? TextInputType.text,
            initialValue: value,
            maxLines: maxLines,
            obscureText: isPassWord,
            onSaved: onSave,
            readOnly: readOnly,
            controller: controller,
            textInputAction: textInputAction ?? TextInputAction.done,
            onFieldSubmitted: onFieldSubmitted,
            autofocus: isAutoFocus,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(borderRadius!),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(borderRadius!),
                ),
              ),
              floatingLabelBehavior: showFloatingLabel!
                  ? FloatingLabelBehavior.auto
                  : FloatingLabelBehavior.never,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              hintText: placeHolder,
            ),
            validator: (value) {
              if ((value == null || value.trim().isEmpty)) {
                return "trForm.formValidationRequired";
              }
              if (isEmail &&
                  !RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                      .hasMatch(value)) {
                return "trForm.formValidationEmail";
              }
              if (isNumber && !RegExp(r'^[0-9]+$').hasMatch(value)) {
                return "trForm.formValidationNumber";
              }
              if (isArabic && !RegExp(r'^[ ء-ي]+$').hasMatch(value)) {
                return "trForm.formValidationArabic";
              }
              if (min != null && value.length < min!) {
                return "trForm.formValidationMinLength(min)";
              }
              if (max != null && value.length > max!) {
                return "trForm.formValidationMaxLength(max)";
              }
              if (isMatchController != null &&
                  value != isMatchController?.text) {
                return "trForm.formValidationMatch";
              }
              if (isMatchValue != null && value != isMatchValue) {
                return "trForm.formValidationMatch";
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
