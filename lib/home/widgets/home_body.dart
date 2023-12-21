import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) => ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(16),
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Visibility(
              visible: index == 0,
              child: Text(
                'upcoming Meeting',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: ListTile(
                contentPadding: const EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(16),
                  ),
                  side: BorderSide(
                    color: index == 0
                        ? Theme.of(context).colorScheme.outline
                        : Theme.of(context).colorScheme.outlineVariant,
                  ),
                ),
                titleAlignment: ListTileTitleAlignment.top,
                leading: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          '26',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          'SEP',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurfaceVariant,
                                  ),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ],
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Meet & Greet',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 50, width: 30),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: index == 0,
              child: Padding(
                padding: const EdgeInsetsDirectional.only(top: 22),
                child: Text(
                  'later on',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                ),
              ),
            ),
          ],
        ),
      );
}
