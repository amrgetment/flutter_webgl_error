import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    required this.textEditingController,
    super.key,
    this.onChanged,
    this.focusNode,
    this.autoFocus = false,
    this.isPassword = false,
    this.title,
    this.suffixIcon,
    this.prefixIcon,
    this.validator,
    this.minLines,
    this.maxLines = 1,
    this.maxCharacters,
    this.autofillHints,
    this.hintText,
    this.onKeyboadDonePressed,
    this.textFieldKey,
    this.keyboardType,
    this.inputFormatters,
    this.obscuringCharacter,
  });

  final String? Function(String? text)? validator;

  /// when you press done on keyboard
  final void Function()? onKeyboadDonePressed;
  final void Function(String text)? onChanged;
  final TextEditingController textEditingController;
  final FocusNode? focusNode;
  final bool autoFocus;
  final bool isPassword;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final int? minLines;
  final int? maxLines;
  final int? maxCharacters;
  final String? hintText;
  final String? title;
  final String? obscuringCharacter;
  final Iterable<String>? autofillHints;
  final GlobalKey<FormState>? textFieldKey;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            title != null
                ? Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: Text(
                          title!,
                          style:
                              Theme.of(context).textTheme.labelSmall!.copyWith(
                                    color: const Color(0xff001744),
                                  ),
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                    ],
                  )
                : const SizedBox(),
            TextFormField(
              obscuringCharacter: obscuringCharacter ?? '•',
              inputFormatters: inputFormatters,
              keyboardType: keyboardType,
              key: textFieldKey,
              onEditingComplete: onKeyboadDonePressed,
              autofillHints: autofillHints,
              focusNode: focusNode,
              textAlignVertical: TextAlignVertical.top,
              obscureText: isPassword,
              validator: validator,
              autofocus: autoFocus,
              minLines: minLines,
              maxLines: maxLines,
              controller: textEditingController,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: const Color(0xff0e0e10),
                  ),
              maxLength: maxCharacters,
              onChanged: onChanged,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(vertical: 10),
                filled: true,
                fillColor: const Color(0xffffffff),
                suffixIcon: Padding(
                  padding: const EdgeInsetsDirectional.only(end: 14),
                  child: suffixIcon,
                ),
                prefixIcon: prefixIcon != null
                    ? Padding(
                        padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: 28,
                        ),
                        child: prefixIcon,
                      )
                    : const Padding(
                        padding: EdgeInsetsDirectional.only(start: 14),
                      ),
                prefixIconConstraints: prefixIcon != null
                    ? const BoxConstraints(minHeight: 20, minWidth: 20)
                    : const BoxConstraints(minWidth: 20),
                suffixIconConstraints: suffixIcon != null
                    ? const BoxConstraints(minHeight: 20, minWidth: 20)
                    : const BoxConstraints(minWidth: 20),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xffe2e2e2),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xff4d75c4),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xffe2e2e2),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xffEF4848),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                hintText: hintText,
                hintStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: const Color(0x66696a6c),
                    ),
                errorStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
                      color: const Color(0xffEF4848),
                    ),
              ),
            ),
          ],
        ),
      );
}
