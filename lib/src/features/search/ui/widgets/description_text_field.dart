import 'package:flutter/material.dart';
import 'package:interview_flutter/resources/l10n/l10n.dart';
import 'package:interview_flutter/src/core/ui/utils.dart';

class DescriptionTextField extends StatelessWidget {
  const DescriptionTextField({super.key, required this.textEditingController});

  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTapOutside: (_) {
        FocusScope.of(context).unfocus();
      },
      controller: textEditingController,
      decoration: appInputDecoration.copyWith(
        labelText: context.l10n.description,
        hintText: context.l10n.add_description,
        constraints: const BoxConstraints(minHeight: 120),
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
      minLines: 3,
      maxLines: 5,
    );
  }
}
