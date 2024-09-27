import 'package:flutter/material.dart';
import 'package:interview_flutter/src/core/ui/colors.dart';

final appInputDecoration = InputDecoration(
  floatingLabelBehavior: FloatingLabelBehavior.always,
  constraints: const BoxConstraints(maxHeight: 60),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
      color: AppColors.inactiveGray,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
      color: AppColors.blue,
      width: 2,
    ),
  ),
  focusColor: AppColors.blue,
  disabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
      color: AppColors.inactiveGray,
    ),
  ),
  hoverColor: AppColors.lightBlue,
);
