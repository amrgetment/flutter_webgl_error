import 'package:flutter/material.dart';

class AppProfileIcon extends StatelessWidget {
  const AppProfileIcon({super.key});

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(20),
        child: const CircleAvatar(
          backgroundImage: AssetImage('assets/default_avatar.png'),
          radius: 20,
        ),
      );
}
