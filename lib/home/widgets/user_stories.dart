import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class UserStories extends StatelessWidget {
  const UserStories({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 18.0),
        child: SizedBox(
          height: 64,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            itemCount: 8,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              width: 64.0,
              height: 64.0,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: CachedNetworkImageProvider(
                    'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1780&q=80',
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(50),
                ),
                border: Border.all(
                  color: Theme.of(context).colorScheme.outlineVariant,
                  width: 4.0,
                ),
              ),
            ),
          ),
        ),
      );
}
