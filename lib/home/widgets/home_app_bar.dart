import 'package:flutter/material.dart';
import 'package:flutter_webgl_error/home/widgets/app_icon.dart';
import 'package:flutter_webgl_error/home/widgets/app_profile_icon.dart';
import 'package:flutter_webgl_error/home/widgets/app_text_field.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    required this.searchFieldController,
    super.key,
  });

  final TextEditingController searchFieldController;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Row(
          children: <Widget>[
            Expanded(
              child: AppTextFormField(
                onChanged: (String text) {},
                prefixIcon: const AppIcon(
                  svgPath: 'assets/search.svg',
                ),
                hintText: 'search contacts',
                textEditingController: searchFieldController,
              ),
            ),
            const SizedBox(width: 16),
            IconButton(
              onPressed: () => <void>{},
              icon: const AppIcon(
                svgPath: 'assets/notifications.svg',
              ),
            ),
            const SizedBox(width: 16),
            const AppProfileIcon(),
          ],
        ),
      );
}
